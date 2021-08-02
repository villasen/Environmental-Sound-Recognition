################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../tensorflow_lite/tensorflow/lite/micro/kernels/xtensa/conv.cc \
../tensorflow_lite/tensorflow/lite/micro/kernels/xtensa/conv_hifi.cc \
../tensorflow_lite/tensorflow/lite/micro/kernels/xtensa/conv_hifimini.cc \
../tensorflow_lite/tensorflow/lite/micro/kernels/xtensa/conv_int8_reference.cc \
../tensorflow_lite/tensorflow/lite/micro/kernels/xtensa/depthwise_conv.cc \
../tensorflow_lite/tensorflow/lite/micro/kernels/xtensa/depthwise_conv_hifi.cc \
../tensorflow_lite/tensorflow/lite/micro/kernels/xtensa/depthwise_conv_hifimini.cc \
../tensorflow_lite/tensorflow/lite/micro/kernels/xtensa/fully_connected.cc \
../tensorflow_lite/tensorflow/lite/micro/kernels/xtensa/quantize.cc \
../tensorflow_lite/tensorflow/lite/micro/kernels/xtensa/softmax.cc \
../tensorflow_lite/tensorflow/lite/micro/kernels/xtensa/softmax_int8_int16.cc \
../tensorflow_lite/tensorflow/lite/micro/kernels/xtensa/svdf.cc 

CC_DEPS += \
./tensorflow_lite/tensorflow/lite/micro/kernels/xtensa/conv.d \
./tensorflow_lite/tensorflow/lite/micro/kernels/xtensa/conv_hifi.d \
./tensorflow_lite/tensorflow/lite/micro/kernels/xtensa/conv_hifimini.d \
./tensorflow_lite/tensorflow/lite/micro/kernels/xtensa/conv_int8_reference.d \
./tensorflow_lite/tensorflow/lite/micro/kernels/xtensa/depthwise_conv.d \
./tensorflow_lite/tensorflow/lite/micro/kernels/xtensa/depthwise_conv_hifi.d \
./tensorflow_lite/tensorflow/lite/micro/kernels/xtensa/depthwise_conv_hifimini.d \
./tensorflow_lite/tensorflow/lite/micro/kernels/xtensa/fully_connected.d \
./tensorflow_lite/tensorflow/lite/micro/kernels/xtensa/quantize.d \
./tensorflow_lite/tensorflow/lite/micro/kernels/xtensa/softmax.d \
./tensorflow_lite/tensorflow/lite/micro/kernels/xtensa/softmax_int8_int16.d \
./tensorflow_lite/tensorflow/lite/micro/kernels/xtensa/svdf.d 

OBJS += \
./tensorflow_lite/tensorflow/lite/micro/kernels/xtensa/conv.o \
./tensorflow_lite/tensorflow/lite/micro/kernels/xtensa/conv_hifi.o \
./tensorflow_lite/tensorflow/lite/micro/kernels/xtensa/conv_hifimini.o \
./tensorflow_lite/tensorflow/lite/micro/kernels/xtensa/conv_int8_reference.o \
./tensorflow_lite/tensorflow/lite/micro/kernels/xtensa/depthwise_conv.o \
./tensorflow_lite/tensorflow/lite/micro/kernels/xtensa/depthwise_conv_hifi.o \
./tensorflow_lite/tensorflow/lite/micro/kernels/xtensa/depthwise_conv_hifimini.o \
./tensorflow_lite/tensorflow/lite/micro/kernels/xtensa/fully_connected.o \
./tensorflow_lite/tensorflow/lite/micro/kernels/xtensa/quantize.o \
./tensorflow_lite/tensorflow/lite/micro/kernels/xtensa/softmax.o \
./tensorflow_lite/tensorflow/lite/micro/kernels/xtensa/softmax_int8_int16.o \
./tensorflow_lite/tensorflow/lite/micro/kernels/xtensa/svdf.o 


# Each subdirectory must supply rules for building sources it contributes
tensorflow_lite/tensorflow/lite/micro/kernels/xtensa/%.o: ../tensorflow_lite/tensorflow/lite/micro/kernels/xtensa/%.cc tensorflow_lite/tensorflow/lite/micro/kernels/xtensa/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite" -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite/third_party/gemmlowp" -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite/third_party/ruy" -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite/third_party/flatbuffers/include" -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

