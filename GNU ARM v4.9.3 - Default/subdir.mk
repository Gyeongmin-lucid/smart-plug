################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../application_properties.c \
../gatt_db.c \
../init_app.c \
../init_board.c \
../init_mcu.c \
../main.c \
../pti.c 

OBJS += \
./application_properties.o \
./gatt_db.o \
./init_app.o \
./init_board.o \
./init_mcu.o \
./main.o \
./pti.o 

C_DEPS += \
./application_properties.d \
./gatt_db.d \
./init_app.d \
./init_board.d \
./init_mcu.d \
./main.d \
./pti.d 


# Each subdirectory must supply rules for building sources it contributes
application_properties.o: /Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/application_properties.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0xD00' '-DHAL_CONFIG=1' '-D__STACK_SIZE=0x800' '-D__StackLimit=0x20000000' '-DEFR32BG1B232F256GM48=1' -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emlib/src" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emlib/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/hardware/kit/common/drivers" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/Device/SiliconLabs/EFR32BG1B/Include" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/CMSIS/Include" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/radio/rail_lib/common" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/sleep/src" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/hardware/kit/EFR32BG1_BRD4300C/config" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/hardware/kit/common/halconfig" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/uartdrv/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/protocol/bluetooth/ble_stack/inc/common" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/protocol/bluetooth/ble_stack/inc/soc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/sleep/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/hardware/kit/common/bsp" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/Device/SiliconLabs/EFR32BG1B/Source" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/app/bluetooth/common/stack_bridge" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/tempdrv/src" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/halconfig/inc/hal-config" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/radio/rail_lib/chip/efr32" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/Device/SiliconLabs/EFR32BG1B/Source/GCC" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/bootloader/api" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/common/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/tempdrv/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/gpiointerrupt/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/bootloader" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"application_properties.d" -MT"application_properties.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gatt_db.o: /Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/gatt_db.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0xD00' '-DHAL_CONFIG=1' '-D__STACK_SIZE=0x800' '-D__StackLimit=0x20000000' '-DEFR32BG1B232F256GM48=1' -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emlib/src" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emlib/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/hardware/kit/common/drivers" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/Device/SiliconLabs/EFR32BG1B/Include" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/CMSIS/Include" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/radio/rail_lib/common" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/sleep/src" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/hardware/kit/EFR32BG1_BRD4300C/config" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/hardware/kit/common/halconfig" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/uartdrv/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/protocol/bluetooth/ble_stack/inc/common" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/protocol/bluetooth/ble_stack/inc/soc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/sleep/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/hardware/kit/common/bsp" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/Device/SiliconLabs/EFR32BG1B/Source" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/app/bluetooth/common/stack_bridge" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/tempdrv/src" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/halconfig/inc/hal-config" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/radio/rail_lib/chip/efr32" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/Device/SiliconLabs/EFR32BG1B/Source/GCC" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/bootloader/api" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/common/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/tempdrv/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/gpiointerrupt/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/bootloader" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"gatt_db.d" -MT"gatt_db.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

init_app.o: /Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/init_app.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0xD00' '-DHAL_CONFIG=1' '-D__STACK_SIZE=0x800' '-D__StackLimit=0x20000000' '-DEFR32BG1B232F256GM48=1' -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emlib/src" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emlib/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/hardware/kit/common/drivers" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/Device/SiliconLabs/EFR32BG1B/Include" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/CMSIS/Include" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/radio/rail_lib/common" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/sleep/src" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/hardware/kit/EFR32BG1_BRD4300C/config" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/hardware/kit/common/halconfig" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/uartdrv/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/protocol/bluetooth/ble_stack/inc/common" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/protocol/bluetooth/ble_stack/inc/soc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/sleep/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/hardware/kit/common/bsp" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/Device/SiliconLabs/EFR32BG1B/Source" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/app/bluetooth/common/stack_bridge" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/tempdrv/src" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/halconfig/inc/hal-config" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/radio/rail_lib/chip/efr32" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/Device/SiliconLabs/EFR32BG1B/Source/GCC" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/bootloader/api" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/common/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/tempdrv/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/gpiointerrupt/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/bootloader" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"init_app.d" -MT"init_app.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

init_board.o: /Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/init_board.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0xD00' '-DHAL_CONFIG=1' '-D__STACK_SIZE=0x800' '-D__StackLimit=0x20000000' '-DEFR32BG1B232F256GM48=1' -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emlib/src" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emlib/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/hardware/kit/common/drivers" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/Device/SiliconLabs/EFR32BG1B/Include" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/CMSIS/Include" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/radio/rail_lib/common" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/sleep/src" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/hardware/kit/EFR32BG1_BRD4300C/config" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/hardware/kit/common/halconfig" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/uartdrv/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/protocol/bluetooth/ble_stack/inc/common" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/protocol/bluetooth/ble_stack/inc/soc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/sleep/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/hardware/kit/common/bsp" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/Device/SiliconLabs/EFR32BG1B/Source" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/app/bluetooth/common/stack_bridge" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/tempdrv/src" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/halconfig/inc/hal-config" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/radio/rail_lib/chip/efr32" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/Device/SiliconLabs/EFR32BG1B/Source/GCC" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/bootloader/api" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/common/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/tempdrv/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/gpiointerrupt/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/bootloader" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"init_board.d" -MT"init_board.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

init_mcu.o: /Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/init_mcu.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0xD00' '-DHAL_CONFIG=1' '-D__STACK_SIZE=0x800' '-D__StackLimit=0x20000000' '-DEFR32BG1B232F256GM48=1' -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emlib/src" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emlib/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/hardware/kit/common/drivers" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/Device/SiliconLabs/EFR32BG1B/Include" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/CMSIS/Include" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/radio/rail_lib/common" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/sleep/src" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/hardware/kit/EFR32BG1_BRD4300C/config" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/hardware/kit/common/halconfig" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/uartdrv/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/protocol/bluetooth/ble_stack/inc/common" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/protocol/bluetooth/ble_stack/inc/soc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/sleep/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/hardware/kit/common/bsp" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/Device/SiliconLabs/EFR32BG1B/Source" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/app/bluetooth/common/stack_bridge" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/tempdrv/src" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/halconfig/inc/hal-config" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/radio/rail_lib/chip/efr32" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/Device/SiliconLabs/EFR32BG1B/Source/GCC" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/bootloader/api" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/common/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/tempdrv/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/gpiointerrupt/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/bootloader" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"init_mcu.d" -MT"init_mcu.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

main.o: /Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/main.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0xD00' '-DHAL_CONFIG=1' '-D__STACK_SIZE=0x800' '-D__StackLimit=0x20000000' '-DEFR32BG1B232F256GM48=1' -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emlib/src" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emlib/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/hardware/kit/common/drivers" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/Device/SiliconLabs/EFR32BG1B/Include" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/CMSIS/Include" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/radio/rail_lib/common" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/sleep/src" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/hardware/kit/EFR32BG1_BRD4300C/config" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/hardware/kit/common/halconfig" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/uartdrv/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/protocol/bluetooth/ble_stack/inc/common" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/protocol/bluetooth/ble_stack/inc/soc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/sleep/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/hardware/kit/common/bsp" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/Device/SiliconLabs/EFR32BG1B/Source" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/app/bluetooth/common/stack_bridge" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/tempdrv/src" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/halconfig/inc/hal-config" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/radio/rail_lib/chip/efr32" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/Device/SiliconLabs/EFR32BG1B/Source/GCC" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/bootloader/api" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/common/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/tempdrv/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/gpiointerrupt/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/bootloader" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"main.d" -MT"main.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

pti.o: /Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/pti.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0xD00' '-DHAL_CONFIG=1' '-D__STACK_SIZE=0x800' '-D__StackLimit=0x20000000' '-DEFR32BG1B232F256GM48=1' -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emlib/src" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emlib/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/hardware/kit/common/drivers" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/Device/SiliconLabs/EFR32BG1B/Include" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/CMSIS/Include" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/radio/rail_lib/common" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/sleep/src" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/hardware/kit/EFR32BG1_BRD4300C/config" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/hardware/kit/common/halconfig" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/uartdrv/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/protocol/bluetooth/ble_stack/inc/common" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/protocol/bluetooth/ble_stack/inc/soc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/sleep/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/hardware/kit/common/bsp" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/Device/SiliconLabs/EFR32BG1B/Source" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/app/bluetooth/common/stack_bridge" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/tempdrv/src" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/halconfig/inc/hal-config" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/radio/rail_lib/chip/efr32" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/Device/SiliconLabs/EFR32BG1B/Source/GCC" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/bootloader/api" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/common/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/tempdrv/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/emdrv/gpiointerrupt/inc" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty/platform/bootloader" -I"/Users/gyeongmin/SimplicityStudio/v4_workspace/soc-empty" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"pti.d" -MT"pti.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

