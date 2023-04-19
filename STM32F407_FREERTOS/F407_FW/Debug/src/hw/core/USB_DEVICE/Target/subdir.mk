################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/hw/core/USB_DEVICE/Target/usbd_conf.c 

OBJS += \
./src/hw/core/USB_DEVICE/Target/usbd_conf.o 

C_DEPS += \
./src/hw/core/USB_DEVICE/Target/usbd_conf.d 


# Each subdirectory must supply rules for building sources it contributes
src/hw/core/USB_DEVICE/Target/%.o src/hw/core/USB_DEVICE/Target/%.su: ../src/hw/core/USB_DEVICE/Target/%.c src/hw/core/USB_DEVICE/Target/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F407xx -c -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/bsp/cmsis" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/bsp/cmsis/include" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/lib/STM32F4xx_HAL_Driver/Inc" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/app" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/bsp" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/common" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/hw" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/hw/core/USB_DEVICE/App" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/hw/core/USB_DEVICE/Target" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/lib/STM32_USB_Device_Library/Core/Inc" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/lib/FreeRTOS/Source/CMSIS_RTOS" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/lib/FreeRTOS/Source/include" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/lib/FreeRTOS/Source/portable/GCC/ARM_CM4_MPU" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/lib/STM32_USB_Device_Library/Class/CDC/Inc" -Og -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-src-2f-hw-2f-core-2f-USB_DEVICE-2f-Target

clean-src-2f-hw-2f-core-2f-USB_DEVICE-2f-Target:
	-$(RM) ./src/hw/core/USB_DEVICE/Target/usbd_conf.d ./src/hw/core/USB_DEVICE/Target/usbd_conf.o ./src/hw/core/USB_DEVICE/Target/usbd_conf.su

.PHONY: clean-src-2f-hw-2f-core-2f-USB_DEVICE-2f-Target

