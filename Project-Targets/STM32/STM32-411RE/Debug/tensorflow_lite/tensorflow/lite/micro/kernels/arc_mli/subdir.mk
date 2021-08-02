################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../tensorflow_lite/tensorflow/lite/micro/kernels/arc_mli/conv.cc \
../tensorflow_lite/tensorflow/lite/micro/kernels/arc_mli/conv_slicing_test.cc \
../tensorflow_lite/tensorflow/lite/micro/kernels/arc_mli/depthwise_conv.cc \
../tensorflow_lite/tensorflow/lite/micro/kernels/arc_mli/depthwise_conv_slicing_test.cc \
../tensorflow_lite/tensorflow/lite/micro/kernels/arc_mli/fully_connected.cc \
../tensorflow_lite/tensorflow/lite/micro/kernels/arc_mli/fully_connected_slicing_test.cc \
../tensorflow_lite/tensorflow/lite/micro/kernels/arc_mli/mli_interface.cc \
../tensorflow_lite/tensorflow/lite/micro/kernels/arc_mli/mli_interface_mli_20.cc \
../tensorflow_lite/tensorflow/lite/micro/kernels/arc_mli/mli_slicers.cc \
../tensorflow_lite/tensorflow/lite/micro/kernels/arc_mli/pooling.cc \
../tensorflow_lite/tensorflow/lite/micro/kernels/arc_mli/pooling_slicing_test.cc \
../tensorflow_lite/tensorflow/lite/micro/kernels/arc_mli/scratch_buf_mgr.cc \
../tensorflow_lite/tensorflow/lite/micro/kernels/arc_mli/scratch_buffers.cc 

CC_DEPS += \
./tensorflow_lite/tensorflow/lite/micro/kernels/arc_mli/conv.d \
./tensorflow_lite/tensorflow/lite/micro/kernels/arc_mli/conv_slicing_test.d \
./tensorflow_lite/tensorflow/lite/micro/kernels/arc_mli/depthwise_conv.d \
./tensorflow_lite/tensorflow/lite/micro/kernels/arc_mli/depthwise_conv_slicing_test.d \
./tensorflow_lite/tensorflow/lite/micro/kernels/arc_mli/fully_connected.d \
./tensorflow_lite/tensorflow/lite/micro/kernels/arc_mli/fully_connected_slicing_test.d \
./tensorflow_lite/tensorflow/lite/micro/kernels/arc_mli/mli_interface.d \
./tensorflow_lite/tensorflow/lite/micro/kernels/arc_mli/mli_interface_mli_20.d \
./tensorflow_lite/tensorflow/lite/micro/kernels/arc_mli/mli_slicers.d \
./tensorflow_lite/tensorflow/lite/micro/kernels/arc_mli/pooling.d \
./tensorflow_lite/tensorflow/lite/micro/kernels/arc_mli/pooling_slicing_test.d \
./tensorflow_lite/tensorflow/lite/micro/kernels/arc_mli/scratch_buf_mgr.d \
./tensorflow_lite/tensorflow/lite/micro/kernels/arc_mli/scratch_buffers.d 

OBJS += \
./tensorflow_lite/tensorflow/lite/micro/kernels/arc_mli/conv.o \
./tensorflow_lite/tensorflow/lite/micro/kernels/arc_mli/conv_slicing_test.o \
./tensorflow_lite/tensorflow/lite/micro/kernels/arc_mli/depthwise_conv.o \
./tensorflow_lite/tensorflow/lite/micro/kernels/arc_mli/depthwise_conv_slicing_test.o \
./tensorflow_lite/tensorflow/lite/micro/kernels/arc_mli/fully_connected.o \
./tensorflow_lite/tensorflow/lite/micro/kernels/arc_mli/fully_connected_slicing_test.o \
./tensorflow_lite/tensorflow/lite/micro/kernels/arc_mli/mli_interface.o \
./tensorflow_lite/tensorflow/lite/micro/kernels/arc_mli/mli_interface_mli_20.o \
./tensorflow_lite/tensorflow/lite/micro/kernels/arc_mli/mli_slicers.o \
./tensorflow_lite/tensorflow/lite/micro/kernels/arc_mli/pooling.o \
./tensorflow_lite/tensorflow/lite/micro/kernels/arc_mli/pooling_slicing_test.o \
./tensorflow_lite/tensorflow/lite/micro/kernels/arc_mli/scratch_buf_mgr.o \
./tensorflow_lite/tensorflow/lite/micro/kernels/arc_mli/scratch_buffers.o 


# Each subdirectory must supply rules for building sources it contributes
tensorflow_lite/tensorflow/lite/micro/kernels/arc_mli/%.o: ../tensorflow_lite/tensorflow/lite/micro/kernels/arc_mli/%.cc tensorflow_lite/tensorflow/lite/micro/kernels/arc_mli/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite" -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite/third_party/gemmlowp" -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite/third_party/ruy" -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite/third_party/flatbuffers/include" -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

