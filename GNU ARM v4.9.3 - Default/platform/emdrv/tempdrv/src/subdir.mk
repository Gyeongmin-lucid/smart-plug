################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../platform/emdrv/tempdrv/src/tempdrv.c 

OBJS += \
./platform/emdrv/tempdrv/src/tempdrv.o 

C_DEPS += \
./platform/emdrv/tempdrv/src/tempdrv.d 


# Each subdirectory must supply rules for building sources it contributes
platform/emdrv/tempdrv/src/tempdrv.o: /Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/tempdrv/src/tempdrv.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0xD00' '-DHAL_CONFIG=1' '-D__STACK_SIZE=0x800' '-D__StackLimit=0x20000000' '-DEFR32BG1B232F256GM48=1' -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emlib/src" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emlib/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/hardware/kit/common/drivers" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/Device/SiliconLabs/EFR32BG1B/Include" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/CMSIS/Include" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/radio/rail_lib/common" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/sleep/src" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/hardware/kit/EFR32BG1_BRD4300C/config" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/hardware/kit/common/halconfig" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/uartdrv/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/protocol/bluetooth/ble_stack/inc/common" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/protocol/bluetooth/ble_stack/inc/soc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/sleep/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/hardware/kit/common/bsp" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/Device/SiliconLabs/EFR32BG1B/Source" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/app/bluetooth/common/stack_bridge" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/tempdrv/src" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/halconfig/inc/hal-config" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/radio/rail_lib/chip/efr32" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/Device/SiliconLabs/EFR32BG1B/Source/GCC" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/bootloader/api" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/common/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/tempdrv/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/gpiointerrupt/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/bootloader" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"platform/emdrv/tempdrv/src/tempdrv.d" -MT"platform/emdrv/tempdrv/src/tempdrv.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


