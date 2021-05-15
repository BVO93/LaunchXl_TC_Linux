################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
build-1049109089:
	@$(MAKE) --no-print-directory -Onone -f subdir_rules.mk build-1049109089-inproc

build-1049109089-inproc: ../release.cfg
	@echo 'Building file: "$<"'
	@echo 'Invoking: XDCtools'
	"/home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/xs" --xdcpath="/home/bjorn/ti/simplelink_cc2640r2_sdk_4_30_00_08/source;/home/bjorn/ti/simplelink_cc2640r2_sdk_4_30_00_08/kernel/tirtos/packages;" xdc.tools.configuro -o configPkg -t gnu.targets.arm.M3 -p ti.platforms.simplelink:CC2640R2F -r release -c "/home/bjorn/ti/CCStudio/ccs/tools/compiler/gcc-arm-none-eabi-7-2017-q4-major" --compileOptions " -DDeviceFamily_CC26X0R2 " "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

configPkg/linker.cmd: build-1049109089 ../release.cfg
configPkg/compiler.opt: build-1049109089
configPkg/: build-1049109089


