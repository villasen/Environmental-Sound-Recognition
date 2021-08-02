################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/fft.cc \
../tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/fft_util.cc 

C_SRCS += \
../tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/fft_io.c \
../tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/filterbank.c \
../tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/filterbank_io.c \
../tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/filterbank_util.c \
../tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/frontend.c \
../tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/frontend_io.c \
../tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/frontend_main.c \
../tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/frontend_util.c \
../tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/log_lut.c \
../tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/log_scale.c \
../tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/log_scale_io.c \
../tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/log_scale_util.c \
../tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/noise_reduction.c \
../tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_io.c \
../tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_util.c \
../tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control.c \
../tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_util.c \
../tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/window.c \
../tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/window_io.c \
../tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/window_util.c 

C_DEPS += \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/fft_io.d \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/filterbank.d \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/filterbank_io.d \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/filterbank_util.d \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/frontend.d \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/frontend_io.d \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/frontend_main.d \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/frontend_util.d \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/log_lut.d \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/log_scale.d \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/log_scale_io.d \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/log_scale_util.d \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/noise_reduction.d \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_io.d \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_util.d \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control.d \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_util.d \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/window.d \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/window_io.d \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/window_util.d 

CC_DEPS += \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/fft.d \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/fft_util.d 

OBJS += \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/fft.o \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/fft_io.o \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/fft_util.o \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/filterbank.o \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/filterbank_io.o \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/filterbank_util.o \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/frontend.o \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/frontend_io.o \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/frontend_main.o \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/frontend_util.o \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/log_lut.o \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/log_scale.o \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/log_scale_io.o \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/log_scale_util.o \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/noise_reduction.o \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_io.o \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_util.o \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control.o \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_util.o \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/window.o \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/window_io.o \
./tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/window_util.o 


# Each subdirectory must supply rules for building sources it contributes
tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/%.o: ../tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/%.cc tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite" -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite/third_party/gemmlowp" -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite/third_party/ruy" -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite/third_party/flatbuffers/include" -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/%.o: ../tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/%.c tensorflow_lite/tensorflow/lite/experimental/microfrontend/lib/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite" -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite/third_party/flatbuffers" -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite/third_party/gemmlowp" -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite/third_party/ruy" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

