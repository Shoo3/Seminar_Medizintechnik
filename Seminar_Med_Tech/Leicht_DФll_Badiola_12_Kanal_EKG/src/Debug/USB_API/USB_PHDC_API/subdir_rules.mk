################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
USB_API/USB_PHDC_API/UsbPHDC.obj: ../USB_API/USB_PHDC_API/UsbPHDC.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: MSP430 Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-msp430_16.9.0.LTS/bin/cl430" -vmspx --abi=eabi -O3 --include_path="C:/ti/ccsv7/ccs_base/msp430/include" --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-msp430_16.9.0.LTS/include" --include_path="R:/projekt-seminar/ws2016-2017/Leicht_Döll_Badiola_12_Kanal_EKG/src/driverlib/MSP430F5xx_6xx" --include_path="R:/projekt-seminar/ws2016-2017/Leicht_Döll_Badiola_12_Kanal_EKG/src" --include_path="R:/projekt-seminar/ws2016-2017/Leicht_Döll_Badiola_12_Kanal_EKG/src/USB_config" --advice:power="none" -g --define=__MSP430F5529__ --define=DEPRECATED --diag_warning=225 --display_error_number --diag_wrap=off --silicon_errata=CPU21 --silicon_errata=CPU22 --silicon_errata=CPU23 --silicon_errata=CPU40 --printf_support=minimal --preproc_with_compile --preproc_dependency="USB_API/USB_PHDC_API/UsbPHDC.d" --obj_directory="USB_API/USB_PHDC_API" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


