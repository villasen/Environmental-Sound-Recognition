################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_result/size_report/pointer_noinline.cc \
../tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_result/size_report/pointer_read.cc \
../tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_result/size_report/pointer_simple.cc \
../tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_result/size_report/result_noinline.cc \
../tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_result/size_report/result_read.cc \
../tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_result/size_report/result_simple.cc 

CC_DEPS += \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_result/size_report/pointer_noinline.d \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_result/size_report/pointer_read.d \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_result/size_report/pointer_simple.d \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_result/size_report/result_noinline.d \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_result/size_report/result_read.d \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_result/size_report/result_simple.d 

OBJS += \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_result/size_report/pointer_noinline.o \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_result/size_report/pointer_read.o \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_result/size_report/pointer_simple.o \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_result/size_report/result_noinline.o \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_result/size_report/result_read.o \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_result/size_report/result_simple.o 


# Each subdirectory must supply rules for building sources it contributes
tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_result/size_report/%.o: ../tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_result/size_report/%.cc tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_result/size_report/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite" -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite/third_party/gemmlowp" -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite/third_party/ruy" -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite/third_party/flatbuffers/include" -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

