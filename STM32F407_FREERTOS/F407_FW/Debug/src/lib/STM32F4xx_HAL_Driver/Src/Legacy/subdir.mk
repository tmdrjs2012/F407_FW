################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/lib/STM32F4xx_HAL_Driver/Src/Legacy/stm32f4xx_hal_can.c \
../src/lib/STM32F4xx_HAL_Driver/Src/Legacy/stm32f4xx_hal_eth.c 

OBJS += \
./src/lib/STM32F4xx_HAL_Driver/Src/Legacy/stm32f4xx_hal_can.o \
./src/lib/STM32F4xx_HAL_Driver/Src/Legacy/stm32f4xx_hal_eth.o 

C_DEPS += \
./src/lib/STM32F4xx_HAL_Driver/Src/Legacy/stm32f4xx_hal_can.d \
./src/lib/STM32F4xx_HAL_Driver/Src/Legacy/stm32f4xx_hal_eth.d 


# Each subdirectory must supply rules for building sources it contributes
src/lib/STM32F4xx_HAL_Driver/Src/Legacy/%.o src/lib/STM32F4xx_HAL_Driver/Src/Legacy/%.su: ../src/lib/STM32F4xx_HAL_Driver/Src/Legacy/%.c src/lib/STM32F4xx_HAL_Driver/Src/Legacy/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F407xx -c -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/bsp/cmsis" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/bsp/cmsis/include" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/lib/STM32F4xx_HAL_Driver/Inc" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/app" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/bsp" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/common" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/hw" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/lib/FreeRTOS/Source/CMSIS_RTOS" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/lib/FreeRTOS/Source/include" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/lib/FreeRTOS/Source/portable/GCC/ARM_CM4F" -Og -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=softfp -mthumb -o "$@"

clean: clean-src-2f-lib-2f-STM32F4xx_HAL_Driver-2f-Src-2f-Legacy

clean-src-2f-lib-2f-STM32F4xx_HAL_Driver-2f-Src-2f-Legacy:
	-$(RM) ./src/lib/STM32F4xx_HAL_Driver/Src/Legacy/stm32f4xx_hal_can.d ./src/lib/STM32F4xx_HAL_Driver/Src/Legacy/stm32f4xx_hal_can.o ./src/lib/STM32F4xx_HAL_Driver/Src/Legacy/stm32f4xx_hal_can.su ./src/lib/STM32F4xx_HAL_Driver/Src/Legacy/stm32f4xx_hal_eth.d ./src/lib/STM32F4xx_HAL_Driver/Src/Legacy/stm32f4xx_hal_eth.o ./src/lib/STM32F4xx_HAL_Driver/Src/Legacy/stm32f4xx_hal_eth.su

.PHONY: clean-src-2f-lib-2f-STM32F4xx_HAL_Driver-2f-Src-2f-Legacy

