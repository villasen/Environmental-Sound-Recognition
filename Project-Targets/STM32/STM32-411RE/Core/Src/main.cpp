/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2021 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include <string.h>

#include "tensorflow/lite/micro/kernels/micro_ops.h"
#include "tensorflow/lite/micro/micro_error_reporter.h"
#include "tensorflow/lite/micro/micro_interpreter.h"
#include "tensorflow/lite/micro/micro_mutable_op_resolver.h"
#include "tiny_conv_micro_features_model_data.h"


#include "audio_provider.h"
#include "yes_micro_features_data.h"
#include "command_responder.h"
#include "feature_provider.h"
#include "recognize_commands.h"
#include "micro_model_settings.h"
//#include "tensorflow/lite/version.h"
#include "sine_model.h"


#include "no_micro_features_data.h"
#include "yes_micro_features_data.h"
#include "doorknock_micro_features_data.h"
#include "gun_shot_micro_features_data.h"
#include "crying_baby_micro_features_data.h"
#include "dog_bark_micro_features_data.h"
#include "dog_micro_features_data.h"

//#define OLD_TENSORFLOW

#define MAX_FEATURE_NUMBER 1960



/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
TIM_HandleTypeDef htim10;

UART_HandleTypeDef huart1;
UART_HandleTypeDef huart2;
UART_HandleTypeDef huart6;

/* USER CODE BEGIN PV */


// Globals, used for compatibility with Arduino-style sketches.
namespace {
tflite::ErrorReporter* error_reporter = nullptr;
const tflite::Model* model = nullptr;
TfLiteTensor* model_input = nullptr;
//FeatureProvider* feature_provider = nullptr;
//RecognizeCommands* recognizer = nullptr;
//int32_t previous_time = 0;

// Create an area of memory to use for input, output, and intermediate arrays.
// The size of this will depend on the model you're using, and may need to be
// determined by experimentation.
constexpr int kTensorArenaSize = 7 * 1024;
uint8_t tensor_arena[kTensorArenaSize];
}  // namespace






/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_TIM10_Init(void);
static void MX_USART1_UART_Init(void);
static void MX_USART2_UART_Init(void);
static void MX_USART6_UART_Init(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{

	/* USER CODE BEGIN 1 */
/*	char buf[50];
	int buf_len = 0;

	uint32_t num_elements;
	uint32_t timestamp;
	float y_val;
*/
	TfLiteStatus tflite_status;
  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_TIM10_Init();
  MX_USART1_UART_Init();
  MX_USART2_UART_Init();
  MX_USART6_UART_Init();
  /* USER CODE BEGIN 2 */

	// Set up logging. Google style is to avoid globals or statics because of
	  // lifetime uncertainty, but since this has a trivial destructor it's okay.
	  // NOLINTNEXTLINE(runtime-global-variables)
	  static tflite::MicroErrorReporter micro_error_reporter;
	  error_reporter = &micro_error_reporter;

	error_reporter->Report("\n*****Starting Sound Recognition Program for Sparkfun Edge*****\n");


	 // Map the model into a usable data structure. This doesn't involve any
	  // copying or parsing, it's a very lightweight operation.
	  model = tflite::GetModel(g_tiny_conv_micro_features_model_data);
	  if (model->version() != TFLITE_SCHEMA_VERSION) {
	    error_reporter->Report(
	        "Model provided is schema version %d not equal "
	        "to supported version %d.",
	        model->version(), TFLITE_SCHEMA_VERSION);
	    //return;
	  }


	  // Pull in only the operation implementations we need.
	   // This relies on a complete list of all the ops needed by this graph.
	   // An easier approach is to just use the AllOpsResolver, but this will
	   // incur some penalty in code space for op implementations that are not
	   // needed by this graph.


	   static tflite::MicroMutableOpResolver<1> micro_mutable_op_resolver;


	   tflite_status = micro_mutable_op_resolver.AddFullyConnected();
	   if (tflite_status != kTfLiteOk)
	   {
	     error_reporter->Report("Could not add FULLY CONNECTED op");
	     while(1);
	   }


	   // Build an interpreter to run the model with.
	   tflite::MicroInterpreter interpreter(model, micro_mutable_op_resolver,
	                                     tensor_arena, kTensorArenaSize,
	                                     error_reporter);


	   TfLiteStatus allocate_status = interpreter.AllocateTensors();

	   if (allocate_status != kTfLiteOk) {
	     error_reporter->Report("AllocateTensors() failed");
	    // return;
	   }


	   // Get information about the memory area to use for the model's input.
	     //model_input = interpreter->input(0);
	     model_input = interpreter.input(0);

	     error_reporter->Report("model dim size=%d", model_input->dims->size);
	     error_reporter->Report("model dim data0=%d", model_input->dims->data[0]);
	     error_reporter->Report("model dim data1=%d", model_input->dims->data[1]);
	     error_reporter->Report("model dim data2=%d", model_input->dims->data[2]);
	     error_reporter->Report("model type=%d", model_input->type);


	     if ((model_input->dims->size != 4) || (model_input->dims->data[0] != 1) ||
	         (model_input->dims->data[1] != kFeatureSliceCount) ||
	         (model_input->dims->data[2] != kFeatureSliceSize) ||
	         (model_input->type != kTfLiteUInt8)) {
	       error_reporter->Report("Bad input tensor parameters in model");
	 //      return;
	     }



	     for (int i = 0; i < BABY_TOTAL_FILE_NUMBER ; i++)
	     {
	         error_reporter->Report("Test Number is %d", i);
	         error_reporter->Report("*****************");
	         error_reporter->Report("Testing input data crying baby");


	       for (int j = 0; j < (int)model_input->bytes; j++) {
	         //   model_input->data.uint8[j] =  g_crying_baby_sounds_arrays[i][j];
	         //   model_input->data.uint8[j] =  g_dog_bark_sounds_arrays[i][j];
	         //   model_input->data.uint8[j] =  g_door_knock_sounds_arrays[i][j];
	         //   model_input->data.uint8[j] =  g_gun_shot_sounds_arrays[i][j];
	         //     model_input->data.uint8[j] =  g_clapping_sounds_arrays[i][j];
	         //     model_input->data.uint8[j] =  g_clock_alarm_sounds_arrays[i][j];
	        //      model_input->data.uint8[j] =  g_coughing_sounds_arrays[i][j];
	              model_input->data.uint8[j] =  g_dog_sounds_arrays[i][j];

	         }


	       // Run the model on the spectrogram input and make sure it succeeds.
	       TfLiteStatus invoke_status = interpreter.Invoke();
	       if (invoke_status != kTfLiteOk) {
	         error_reporter->Report("Invoke failed");
	       //  return;
	       }

	       // Obtain a pointer to the output tensor
	       //TfLiteTensor* output = interpreter->output(0);
	       TfLiteTensor* output = interpreter.output(0);
	       error_reporter->Report("output: %d", output->data.uint8[0]);


	       // There are four possible classes in the output, each with a score.
	       const int kSilenceIndex = 0;
	       const int kUnknownIndex = 1;
	       const int kcarhornIndex = 2;
	       const int kCoughingIndex = 3;
	       const int kClappingIndex = 4;
	       const int kGunShotIndex = 5;
	       const int kCryingBabyIndex = 6;
	       const int kDoorKnockIndex = 7;
	       const int kSheilaIndex = 8;
	       const int kDogBarkIndex = 9;


	       // Make sure that the expected "Yes" score is higher than the other classes.
	       uint8_t silence_score = output->data.uint8[kSilenceIndex];
	       uint8_t unknown_score = output->data.uint8[kUnknownIndex];
//	       uint8_t car_horn_score = output->data.uint8[kcarhornIndex];
	       uint8_t coughing_score = output->data.uint8[kCoughingIndex];
	       uint8_t clapping_score = output->data.uint8[kClappingIndex];
	       uint8_t gunshot_score = output->data.uint8[kGunShotIndex];
	       uint8_t crying_baby_score = output->data.uint8[kCryingBabyIndex];
	       uint8_t door_knock_score = output->data.uint8[kDoorKnockIndex];
	       uint8_t sheila_score = output->data.uint8[kSheilaIndex];
	       uint8_t dog_bark_score = output->data.uint8[kDogBarkIndex];

	      // error_reporter->Report("Softmax: silence=%d, unknown=%d, yes=%d, no=%d", silence_score, unknown_score, yes_score, no_score);
	       //"car_horn,coughing,clapping,gun_shot,crying_baby,door_knock,clock_alarm,dog"
	       error_reporter->Report("Softmax: silence=%d, unknown=%d, car horn=%d, coughing=%d,  \
	       clapping=%d, gunshot=%d, crying_baby=%d, door_knock=%d, clock alarm=%d, dog=%d"
	       ,silence_score, unknown_score, kcarhornIndex, coughing_score, clapping_score,
	       gunshot_score, crying_baby_score, door_knock_score,
	       sheila_score, dog_bark_score);

	     }

	       error_reporter->Report("\n*****Martin is classifying sounds*****");
	       error_reporter->Report("\n*****End of Sound Recognition Classifier for Sparfun Edge Program*****");
/* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {


    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  __HAL_RCC_PWR_CLK_ENABLE();
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);
  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
  RCC_OscInitStruct.PLL.PLLM = 16;
  RCC_OscInitStruct.PLL.PLLN = 336;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV4;
  RCC_OscInitStruct.PLL.PLLQ = 4;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief TIM10 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM10_Init(void)
{

  /* USER CODE BEGIN TIM10_Init 0 */

  /* USER CODE END TIM10_Init 0 */

  /* USER CODE BEGIN TIM10_Init 1 */

  /* USER CODE END TIM10_Init 1 */
  htim10.Instance = TIM10;
  htim10.Init.Prescaler = 80-1;
  htim10.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim10.Init.Period = 65535-1;
  htim10.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim10.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim10) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM10_Init 2 */

  /* USER CODE END TIM10_Init 2 */

}

/**
  * @brief USART1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART1_UART_Init(void)
{

  /* USER CODE BEGIN USART1_Init 0 */

  /* USER CODE END USART1_Init 0 */

  /* USER CODE BEGIN USART1_Init 1 */

  /* USER CODE END USART1_Init 1 */
  huart1.Instance = USART1;
  huart1.Init.BaudRate = 115200;
  huart1.Init.WordLength = UART_WORDLENGTH_8B;
  huart1.Init.StopBits = UART_STOPBITS_1;
  huart1.Init.Parity = UART_PARITY_NONE;
  huart1.Init.Mode = UART_MODE_TX_RX;
  huart1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart1.Init.OverSampling = UART_OVERSAMPLING_16;
  if (HAL_UART_Init(&huart1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART1_Init 2 */

  /* USER CODE END USART1_Init 2 */

}

/**
  * @brief USART2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART2_UART_Init(void)
{

  /* USER CODE BEGIN USART2_Init 0 */

  /* USER CODE END USART2_Init 0 */

  /* USER CODE BEGIN USART2_Init 1 */

  /* USER CODE END USART2_Init 1 */
  huart2.Instance = USART2;
  huart2.Init.BaudRate = 115200;
  huart2.Init.WordLength = UART_WORDLENGTH_8B;
  huart2.Init.StopBits = UART_STOPBITS_1;
  huart2.Init.Parity = UART_PARITY_NONE;
  huart2.Init.Mode = UART_MODE_TX_RX;
  huart2.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart2.Init.OverSampling = UART_OVERSAMPLING_16;
  if (HAL_UART_Init(&huart2) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART2_Init 2 */

  /* USER CODE END USART2_Init 2 */

}

/**
  * @brief USART6 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART6_UART_Init(void)
{

  /* USER CODE BEGIN USART6_Init 0 */

  /* USER CODE END USART6_Init 0 */

  /* USER CODE BEGIN USART6_Init 1 */

  /* USER CODE END USART6_Init 1 */
  huart6.Instance = USART6;
  huart6.Init.BaudRate = 115200;
  huart6.Init.WordLength = UART_WORDLENGTH_8B;
  huart6.Init.StopBits = UART_STOPBITS_1;
  huart6.Init.Parity = UART_PARITY_NONE;
  huart6.Init.Mode = UART_MODE_TX_RX;
  huart6.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart6.Init.OverSampling = UART_OVERSAMPLING_16;
  if (HAL_HalfDuplex_Init(&huart6) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART6_Init 2 */

  /* USER CODE END USART6_Init 2 */

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOH_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(LD2_GPIO_Port, LD2_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin : B1_Pin */
  GPIO_InitStruct.Pin = B1_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_IT_FALLING;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(B1_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pin : LD2_Pin */
  GPIO_InitStruct.Pin = LD2_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(LD2_GPIO_Port, &GPIO_InitStruct);

}

/* USER CODE BEGIN 4 */
extern "C" void DebugLog(const char* s)
{
  HAL_UART_Transmit(&huart1, (uint8_t *)s, strlen(s), 100);
}
/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
