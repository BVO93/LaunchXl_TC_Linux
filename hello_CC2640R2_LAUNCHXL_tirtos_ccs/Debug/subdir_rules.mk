################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
%.obj: ../%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"/home/bjorn/ti/ccs1031/ccs/tools/compiler/ti-cgt-arm_20.2.4.LTS/bin/armcl" -mv7M3 --code_state=16 --float_support=vfplib -me --include_path="/home/bjorn/ti/TIWS/hello_CC2640R2_LAUNCHXL_tirtos_ccs" --include_path="/home/bjorn/ti/simplelink_cc2640r2_sdk_4_30_00_08/source/ti/posix/ccs" --include_path="/home/bjorn/ti/ccs1031/ccs/tools/compiler/ti-cgt-arm_20.2.4.LTS/include" --define=DeviceFamily_CC26X0R2 -g --diag_warning=225 --diag_warning=255 --diag_wrap=off --display_error_number --gen_func_subsections=on --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: "$<"'
	@echo ' '

build-1737587617:
	@$(MAKE) --no-print-directory -Onone -f subdir_rules.mk build-1737587617-inproc

build-1737587617-inproc: ../hello.cfg
	@echo 'Building file: "$<"'
	@echo 'Invoking: XDCtools'
	"/home/bjorn/ti/ccs1031/xdctools_3_62_00_08_core/xs" --xdcpath="/home/bjorn/ti/simplelink_cc2640r2_sdk_4_30_00_08/source;/home/bjorn/ti/simplelink_cc2640r2_sdk_4_30_00_08/kernel/tirtos/packages;" xdc.tools.configuro -o configPkg -t ti.targets.arm.elf.M3 -p ti.platforms.simplelink:CC2640R2F -r release -c "/home/bjorn/ti/ccs1031/ccs/tools/compiler/ti-cgt-arm_20.2.4.LTS" --compileOptions "-mv7M3 --code_state=16 --float_support=vfplib -me --include_path=\"/home/bjorn/ti/TIWS/hello_CC2640R2_LAUNCHXL_tirtos_ccs\" --include_path=\"/home/bjorn/ti/simplelink_cc2640r2_sdk_4_30_00_08/source/ti/posix/ccs\" --include_path=\"/home/bjorn/ti/ccs1031/ccs/tools/compiler/ti-cgt-arm_20.2.4.LTS/include\" --define=DeviceFamily_CC26X0R2 -g --diag_warning=225 --diag_warning=255 --diag_wrap=off --display_error_number --gen_func_subsections=on  " "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

configPkg/linker.cmd: build-1737587617 ../hello.cfg
configPkg/compiler.opt: build-1737587617
configPkg/: build-1737587617


