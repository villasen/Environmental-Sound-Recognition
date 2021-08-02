################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_status/status.cc \
../tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_status/status_test.cc \
../tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_status/status_with_size_test.cc \
../tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_status/try_test.cc 

C_SRCS += \
../tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_status/status_test_c.c 

C_DEPS += \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_status/status_test_c.d 

CC_DEPS += \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_status/status.d \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_status/status_test.d \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_status/status_with_size_test.d \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_status/try_test.d 

OBJS += \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_status/status.o \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_status/status_test.o \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_status/status_test_c.o \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_status/status_with_size_test.o \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_status/try_test.o 


# Each subdirectory must supply rules for building sources it contributes
tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_status/%.o: ../tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_status/%.cc tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_status/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite" -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite/third_party/gemmlowp" -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite/third_party/ruy" -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite/third_party/flatbuffers/include" -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_status/%.o: ../tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_status/%.c tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_status/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite" -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite/third_party/flatbuffers" -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite/third_party/gemmlowp" -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite/third_party/ruy" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

