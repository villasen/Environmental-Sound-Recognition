################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/stm32f7xx_hal_msp.c \
../Core/Src/stm32f7xx_it.c \
../Core/Src/syscalls.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32f7xx.c 

CPP_SRCS += \
../Core/Src/main.cpp 

C_DEPS += \
./Core/Src/stm32f7xx_hal_msp.d \
./Core/Src/stm32f7xx_it.d \
./Core/Src/syscalls.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32f7xx.d 

OBJS += \
./Core/Src/main.o \
./Core/Src/stm32f7xx_hal_msp.o \
./Core/Src/stm32f7xx_it.o \
./Core/Src/syscalls.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32f7xx.o 

CPP_DEPS += \
./Core/Src/main.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o: ../Core/Src/%.cpp Core/Src/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite" -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite/third_party/gemmlowp" -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite/third_party/ruy" -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite/third_party/flatbuffers/include" -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Src/%.o: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite" -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite/third_party/flatbuffers" -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite/third_party/gemmlowp" -I"C:/Users/MVillasenor/STM32CubeIDE/workspaceForFirstTrial_STM32/tflie-disco-746/tensorflow_lite/third_party/ruy" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

