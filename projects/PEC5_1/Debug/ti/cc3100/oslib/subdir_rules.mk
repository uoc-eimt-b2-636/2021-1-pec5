################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
ti/cc3100/oslib/osi_freertos.obj: C:/uoc\ sistemas\ ciberfisicos/workspace/PEC5_modificado/ti/cc3100/oslib/osi_freertos.c $(GEN_OPTS) | $(GEN_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: MSP432 Compiler'
	"C:/uoc sistemas ciberfisicos/ccsV910_nou/ccs/tools/compiler/ti-cgt-arm_18.12.2.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="C:/uoc sistemas ciberfisicos/workspace/PEC5_modificado/freertos/inc" --include_path="C:/uoc sistemas ciberfisicos/workspace/PEC5_modificado/freertos/cortex-m4" --include_path="C:/uoc sistemas ciberfisicos/workspace/PEC5_modificado/ti/cc3100/board" --include_path="C:/uoc sistemas ciberfisicos/workspace/PEC5_modificado/ti/cc3100/oslib" --include_path="C:/uoc sistemas ciberfisicos/workspace/PEC5_modificado/ti/cc3100/simplelink" --include_path="C:/uoc sistemas ciberfisicos/workspace/PEC5_modificado/ti/cc3100/simplelink/include" --include_path="C:/uoc sistemas ciberfisicos/workspace/PEC5_modificado/ti/cc3100/simplelink/source" --include_path="C:/uoc sistemas ciberfisicos/workspace/PEC5_modificado/ti/cmsis" --include_path="C:/uoc sistemas ciberfisicos/workspace/PEC5_modificado/ti/graphics" --include_path="C:/uoc sistemas ciberfisicos/workspace/PEC5_modificado/ti/inc" --include_path="C:/uoc sistemas ciberfisicos/workspace/PEC5_modificado/ti/lcd" --include_path="C:/uoc sistemas ciberfisicos/workspace/PEC5_modificado/ti/msp432" --include_path="C:/uoc sistemas ciberfisicos/workspace/PEC5_modificado/ti/sensors" --include_path="C:/uoc sistemas ciberfisicos/workspace/PEC5_modificado/uoc/ti_cc3100_boosterpack" --include_path="C:/uoc sistemas ciberfisicos/workspace/PEC5_modificado/uoc/ti_edu_boosterpack" --include_path="C:/uoc sistemas ciberfisicos/workspace/PEC5_modificado/uoc/ti_msp432_launchpad" --include_path="C:/uoc sistemas ciberfisicos/workspace/PEC5_modificado/projects/PEC5_1" --include_path="C:/uoc sistemas ciberfisicos/ccsV910_nou/ccs/ccs_base/arm/include" --include_path="C:/uoc sistemas ciberfisicos/ccsV910_nou/ccs/ccs_base/arm/include/CMSIS" --include_path="C:/uoc sistemas ciberfisicos/ccsV910_nou/ccs/tools/compiler/ti-cgt-arm_18.12.2.LTS/include" --define=__MSP432P401R__ --define=ARM_MATH_CM4 --define=TARGET_IS_MSP432P4XX --define=ccs -g --c99 --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="ti/cc3100/oslib/$(basename $(<F)).d_raw" --obj_directory="ti/cc3100/oslib" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


