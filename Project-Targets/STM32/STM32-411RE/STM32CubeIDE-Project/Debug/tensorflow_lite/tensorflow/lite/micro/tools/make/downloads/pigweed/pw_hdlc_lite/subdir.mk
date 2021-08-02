################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_hdlc_lite/decoder.cc \
../tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_hdlc_lite/decoder_test.cc \
../tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_hdlc_lite/encoder.cc \
../tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_hdlc_lite/encoder_test.cc \
../tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_hdlc_lite/rpc_channel_test.cc \
../tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_hdlc_lite/rpc_packets.cc 

CC_DEPS += \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_hdlc_lite/decoder.d \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_hdlc_lite/decoder_test.d \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_hdlc_lite/encoder.d \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_hdlc_lite/encoder_test.d \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_hdlc_lite/rpc_channel_test.d \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_hdlc_lite/rpc_packets.d 

OBJS += \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_hdlc_lite/decoder.o \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_hdlc_lite/decoder_test.o \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_hdlc_lite/encoder.o \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_hdlc_lite/encoder_test.o \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_hdlc_lite/rpc_channel_test.o \
./tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_hdlc_lite/rpc_packets.o 


# Each subdirectory must supply rules for building sources it contributes
tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_hdlc_lite/%.o: ../tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_hdlc_lite/%.cc tensorflow_lite/tensorflow/lite/micro/tools/make/downloads/pigweed/pw_hdlc_lite/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite" -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite/third_party/gemmlowp" -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite/third_party/ruy" -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite/third_party/flatbuffers/include" -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

