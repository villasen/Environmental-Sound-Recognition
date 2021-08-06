################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Core/Src/Speech_model.cc \
../Core/Src/car_horn_micro_features_data.cc \
../Core/Src/clapping_micro_features_data.cc \
../Core/Src/clock_alarm_micro_features_data.cc \
../Core/Src/coughing_micro_features_data.cc \
../Core/Src/crying_baby_micro_features_data.cc \
../Core/Src/dog_bark_micro_features_data.cc \
../Core/Src/dog_micro_features_data.cc \
../Core/Src/doorknock_micro_features_data.cc \
../Core/Src/feature_provider.cc \
../Core/Src/gun_shot_micro_features_data.cc \
../Core/Src/micro_features_generator.cc \
../Core/Src/micro_model_settings.cc \
../Core/Src/no_feature_data_slice.cc \
../Core/Src/no_micro_features_data.cc \
../Core/Src/recognize_commands.cc \
../Core/Src/tiny_conv_micro_features_model_data.cc \
../Core/Src/yes_feature_data_slice.cc \
../Core/Src/yes_micro_features_data.cc 

C_SRCS += \
../Core/Src/stm32f4xx_hal_msp.c \
../Core/Src/stm32f4xx_it.c \
../Core/Src/syscalls.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32f4xx.c 

CPP_SRCS += \
../Core/Src/main.cpp 

C_DEPS += \
./Core/Src/stm32f4xx_hal_msp.d \
./Core/Src/stm32f4xx_it.d \
./Core/Src/syscalls.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32f4xx.d 

CC_DEPS += \
./Core/Src/Speech_model.d \
./Core/Src/car_horn_micro_features_data.d \
./Core/Src/clapping_micro_features_data.d \
./Core/Src/clock_alarm_micro_features_data.d \
./Core/Src/coughing_micro_features_data.d \
./Core/Src/crying_baby_micro_features_data.d \
./Core/Src/dog_bark_micro_features_data.d \
./Core/Src/dog_micro_features_data.d \
./Core/Src/doorknock_micro_features_data.d \
./Core/Src/feature_provider.d \
./Core/Src/gun_shot_micro_features_data.d \
./Core/Src/micro_features_generator.d \
./Core/Src/micro_model_settings.d \
./Core/Src/no_feature_data_slice.d \
./Core/Src/no_micro_features_data.d \
./Core/Src/recognize_commands.d \
./Core/Src/tiny_conv_micro_features_model_data.d \
./Core/Src/yes_feature_data_slice.d \
./Core/Src/yes_micro_features_data.d 

OBJS += \
./Core/Src/Speech_model.o \
./Core/Src/car_horn_micro_features_data.o \
./Core/Src/clapping_micro_features_data.o \
./Core/Src/clock_alarm_micro_features_data.o \
./Core/Src/coughing_micro_features_data.o \
./Core/Src/crying_baby_micro_features_data.o \
./Core/Src/dog_bark_micro_features_data.o \
./Core/Src/dog_micro_features_data.o \
./Core/Src/doorknock_micro_features_data.o \
./Core/Src/feature_provider.o \
./Core/Src/gun_shot_micro_features_data.o \
./Core/Src/main.o \
./Core/Src/micro_features_generator.o \
./Core/Src/micro_model_settings.o \
./Core/Src/no_feature_data_slice.o \
./Core/Src/no_micro_features_data.o \
./Core/Src/recognize_commands.o \
./Core/Src/stm32f4xx_hal_msp.o \
./Core/Src/stm32f4xx_it.o \
./Core/Src/syscalls.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32f4xx.o \
./Core/Src/tiny_conv_micro_features_model_data.o \
./Core/Src/yes_feature_data_slice.o \
./Core/Src/yes_micro_features_data.o 

CPP_DEPS += \
./Core/Src/main.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o: ../Core/Src/%.cc Core/Src/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/Thesis-Nucleo-411/tensorflow_lite" -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/Thesis-Nucleo-411/tensorflow_lite/third_party/flatbuffers/include" -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/Thesis-Nucleo-411/tensorflow_lite/third_party/gemmlowp" -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/Thesis-Nucleo-411/tensorflow_lite/third_party/ruy" -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Src/%.o: ../Core/Src/%.cpp Core/Src/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/Thesis-Nucleo-411/tensorflow_lite" -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/Thesis-Nucleo-411/tensorflow_lite/third_party/flatbuffers/include" -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/Thesis-Nucleo-411/tensorflow_lite/third_party/gemmlowp" -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/Thesis-Nucleo-411/tensorflow_lite/third_party/ruy" -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Src/%.o: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/Thesis-Nucleo-411/tensorflow_lite" -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/Thesis-Nucleo-411/tensorflow_lite/third_party/flatbuffers/include" -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/Thesis-Nucleo-411/tensorflow_lite/third_party/gemmlowp" -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/Thesis-Nucleo-411/tensorflow_lite/third_party/ruy" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

