################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_unit_test/framework.cc \
../tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_unit_test/framework_test.cc \
../tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_unit_test/logging_event_handler.cc \
../tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_unit_test/logging_main.cc \
../tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_unit_test/rpc_event_handler.cc \
../tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_unit_test/rpc_main.cc \
../tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_unit_test/simple_printing_event_handler.cc \
../tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_unit_test/simple_printing_main.cc \
../tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_unit_test/unit_test_service.cc 

CC_DEPS += \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_unit_test/framework.d \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_unit_test/framework_test.d \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_unit_test/logging_event_handler.d \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_unit_test/logging_main.d \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_unit_test/rpc_event_handler.d \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_unit_test/rpc_main.d \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_unit_test/simple_printing_event_handler.d \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_unit_test/simple_printing_main.d \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_unit_test/unit_test_service.d 

OBJS += \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_unit_test/framework.o \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_unit_test/framework_test.o \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_unit_test/logging_event_handler.o \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_unit_test/logging_main.o \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_unit_test/rpc_event_handler.o \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_unit_test/rpc_main.o \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_unit_test/simple_printing_event_handler.o \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_unit_test/simple_printing_main.o \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_unit_test/unit_test_service.o 


# Each subdirectory must supply rules for building sources it contributes
tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_unit_test/%.o: ../tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_unit_test/%.cc tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_unit_test/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite" -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite/third_party/gemmlowp" -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite/third_party/ruy" -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite/third_party/flatbuffers/include" -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

