#
#  Do not edit this file.  This file is generated from 
#  package.bld.  Any modifications to this file will be 
#  overwritten whenever makefiles are re-generated.
#

unexport MAKEFILE_LIST
MK_NOGENDEPS := $(filter clean,$(MAKECMDGOALS))
override PKGDIR = configPkg
XDCINCS = -I. -I$(strip $(subst ;, -I,$(subst $(space),\$(space),$(XPKGPATH))))
XDCCFGDIR = package/cfg/

#
# The following dependencies ensure package.mak is rebuilt
# in the event that some included BOM script changes.
#
ifneq (clean,$(MAKECMDGOALS))
/home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/utils.js:
package.mak: /home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/utils.js
/home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/xdc.tci:
package.mak: /home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/xdc.tci
/home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/template.xs:
package.mak: /home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/template.xs
/home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/om2.xs:
package.mak: /home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/om2.xs
/home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/xmlgen.xs:
package.mak: /home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/xmlgen.xs
/home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/xmlgen2.xs:
package.mak: /home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/xmlgen2.xs
/home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/Warnings.xs:
package.mak: /home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/Warnings.xs
/home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/IPackage.xs:
package.mak: /home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/IPackage.xs
/home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/package.xs:
package.mak: /home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/package.xs
/home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/services/global/Clock.xs:
package.mak: /home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/services/global/Clock.xs
/home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/services/global/Trace.xs:
package.mak: /home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/services/global/Trace.xs
/home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/bld/bld.js:
package.mak: /home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/bld/bld.js
/home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/bld/BuildEnvironment.xs:
package.mak: /home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/bld/BuildEnvironment.xs
/home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/bld/PackageContents.xs:
package.mak: /home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/bld/PackageContents.xs
/home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/bld/_gen.xs:
package.mak: /home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/bld/_gen.xs
/home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/bld/Library.xs:
package.mak: /home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/bld/Library.xs
/home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/bld/Executable.xs:
package.mak: /home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/bld/Executable.xs
/home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/bld/Repository.xs:
package.mak: /home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/bld/Repository.xs
/home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/bld/Configuration.xs:
package.mak: /home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/bld/Configuration.xs
/home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/bld/Script.xs:
package.mak: /home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/bld/Script.xs
/home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/bld/Manifest.xs:
package.mak: /home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/bld/Manifest.xs
/home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/bld/Utils.xs:
package.mak: /home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/bld/Utils.xs
/home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/bld/ITarget.xs:
package.mak: /home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/bld/ITarget.xs
/home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/bld/ITarget2.xs:
package.mak: /home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/bld/ITarget2.xs
/home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/bld/ITarget3.xs:
package.mak: /home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/bld/ITarget3.xs
/home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/bld/ITargetFilter.xs:
package.mak: /home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/bld/ITargetFilter.xs
/home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/bld/package.xs:
package.mak: /home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/bld/package.xs
package.mak: config.bld
/home/bjorn/ti/simplelink_cc2640r2_sdk_4_30_00_08/kernel/tirtos/packages/gnu/targets/ITarget.xs:
package.mak: /home/bjorn/ti/simplelink_cc2640r2_sdk_4_30_00_08/kernel/tirtos/packages/gnu/targets/ITarget.xs
/home/bjorn/ti/simplelink_cc2640r2_sdk_4_30_00_08/kernel/tirtos/packages/gnu/targets/_utils.xs:
package.mak: /home/bjorn/ti/simplelink_cc2640r2_sdk_4_30_00_08/kernel/tirtos/packages/gnu/targets/_utils.xs
/home/bjorn/ti/simplelink_cc2640r2_sdk_4_30_00_08/kernel/tirtos/packages/gnu/targets/Linux86.xs:
package.mak: /home/bjorn/ti/simplelink_cc2640r2_sdk_4_30_00_08/kernel/tirtos/packages/gnu/targets/Linux86.xs
/home/bjorn/ti/simplelink_cc2640r2_sdk_4_30_00_08/kernel/tirtos/packages/gnu/targets/Mingw.xs:
package.mak: /home/bjorn/ti/simplelink_cc2640r2_sdk_4_30_00_08/kernel/tirtos/packages/gnu/targets/Mingw.xs
/home/bjorn/ti/simplelink_cc2640r2_sdk_4_30_00_08/kernel/tirtos/packages/gnu/targets/package.xs:
package.mak: /home/bjorn/ti/simplelink_cc2640r2_sdk_4_30_00_08/kernel/tirtos/packages/gnu/targets/package.xs
/home/bjorn/ti/simplelink_cc2640r2_sdk_4_30_00_08/kernel/tirtos/packages/gnu/targets/arm/ITarget.xs:
package.mak: /home/bjorn/ti/simplelink_cc2640r2_sdk_4_30_00_08/kernel/tirtos/packages/gnu/targets/arm/ITarget.xs
/home/bjorn/ti/simplelink_cc2640r2_sdk_4_30_00_08/kernel/tirtos/packages/gnu/targets/arm/GCArmv6.xs:
package.mak: /home/bjorn/ti/simplelink_cc2640r2_sdk_4_30_00_08/kernel/tirtos/packages/gnu/targets/arm/GCArmv6.xs
/home/bjorn/ti/simplelink_cc2640r2_sdk_4_30_00_08/kernel/tirtos/packages/gnu/targets/arm/GCArmv7A.xs:
package.mak: /home/bjorn/ti/simplelink_cc2640r2_sdk_4_30_00_08/kernel/tirtos/packages/gnu/targets/arm/GCArmv7A.xs
/home/bjorn/ti/simplelink_cc2640r2_sdk_4_30_00_08/kernel/tirtos/packages/gnu/targets/arm/IM.xs:
package.mak: /home/bjorn/ti/simplelink_cc2640r2_sdk_4_30_00_08/kernel/tirtos/packages/gnu/targets/arm/IM.xs
/home/bjorn/ti/simplelink_cc2640r2_sdk_4_30_00_08/kernel/tirtos/packages/gnu/targets/arm/M3.xs:
package.mak: /home/bjorn/ti/simplelink_cc2640r2_sdk_4_30_00_08/kernel/tirtos/packages/gnu/targets/arm/M3.xs
/home/bjorn/ti/simplelink_cc2640r2_sdk_4_30_00_08/kernel/tirtos/packages/gnu/targets/arm/A8F.xs:
package.mak: /home/bjorn/ti/simplelink_cc2640r2_sdk_4_30_00_08/kernel/tirtos/packages/gnu/targets/arm/A8F.xs
/home/bjorn/ti/simplelink_cc2640r2_sdk_4_30_00_08/kernel/tirtos/packages/gnu/targets/arm/A9F.xs:
package.mak: /home/bjorn/ti/simplelink_cc2640r2_sdk_4_30_00_08/kernel/tirtos/packages/gnu/targets/arm/A9F.xs
/home/bjorn/ti/simplelink_cc2640r2_sdk_4_30_00_08/kernel/tirtos/packages/gnu/targets/arm/A15F.xs:
package.mak: /home/bjorn/ti/simplelink_cc2640r2_sdk_4_30_00_08/kernel/tirtos/packages/gnu/targets/arm/A15F.xs
/home/bjorn/ti/simplelink_cc2640r2_sdk_4_30_00_08/kernel/tirtos/packages/gnu/targets/arm/A53F.xs:
package.mak: /home/bjorn/ti/simplelink_cc2640r2_sdk_4_30_00_08/kernel/tirtos/packages/gnu/targets/arm/A53F.xs
/home/bjorn/ti/simplelink_cc2640r2_sdk_4_30_00_08/kernel/tirtos/packages/gnu/targets/arm/package.xs:
package.mak: /home/bjorn/ti/simplelink_cc2640r2_sdk_4_30_00_08/kernel/tirtos/packages/gnu/targets/arm/package.xs
package.mak: package.bld
/home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/tools/configuro/template/compiler.opt.xdt:
package.mak: /home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/tools/configuro/template/compiler.opt.xdt
/home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/services/io/File.xs:
package.mak: /home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/services/io/File.xs
/home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/services/io/package.xs:
package.mak: /home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/services/io/package.xs
/home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/tools/configuro/template/compiler.defs.xdt:
package.mak: /home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/tools/configuro/template/compiler.defs.xdt
/home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/tools/configuro/template/custom.mak.exe.xdt:
package.mak: /home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/tools/configuro/template/custom.mak.exe.xdt
/home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/tools/configuro/template/package.xs.xdt:
package.mak: /home/bjorn/ti/CCStudio/xdctools_3_55_02_22_core/packages/xdc/tools/configuro/template/package.xs.xdt
endif

gnu.targets.arm.M3.rootDir ?= /home/bjorn/ti/CCStudio/ccs/tools/compiler/gcc-arm-none-eabi-7-2017-q4-major
gnu.targets.arm.packageBase ?= /home/bjorn/ti/simplelink_cc2640r2_sdk_4_30_00_08/kernel/tirtos/packages/gnu/targets/arm/
.PRECIOUS: $(XDCCFGDIR)/%.om3g
.PHONY: all,m3g .dlls,m3g .executables,m3g test,m3g
all,m3g: .executables,m3g
.executables,m3g: .libraries,m3g
.executables,m3g: .dlls,m3g
.dlls,m3g: .libraries,m3g
.libraries,m3g: .interfaces
	@$(RM) $@
	@$(TOUCH) "$@"

.help::
	@$(ECHO) xdc test,m3g
	@$(ECHO) xdc .executables,m3g
	@$(ECHO) xdc .libraries,m3g
	@$(ECHO) xdc .dlls,m3g


all: .executables 
.executables: .libraries .dlls
.libraries: .interfaces

PKGCFGS := $(wildcard package.xs) package/build.cfg
.interfaces: package/package.xdc.inc package/package.defs.h package.xdc $(PKGCFGS)

-include package/package.xdc.dep
package/%.xdc.inc package/%_configPkg.c package/%.defs.h: %.xdc $(PKGCFGS)
	@$(MSG) generating interfaces for package configPkg" (because $@ is older than $(firstword $?))" ...
	$(XSRUN) -f xdc/services/intern/cmd/build.xs $(MK_IDLOPTS) -m package/package.xdc.dep -i package/package.xdc.inc package.xdc

.dlls,m3g .dlls: release.pm3g

-include package/cfg/release_pm3g.mak
-include package/cfg/release_pm3g.cfg.mak
ifeq (,$(MK_NOGENDEPS))
-include package/cfg/release_pm3g.dep
endif
release.pm3g: package/cfg/release_pm3g.xdl
	@


ifeq (,$(wildcard .libraries,m3g))
release.pm3g package/cfg/release_pm3g.c: .libraries,m3g
endif

package/cfg/release_pm3g.c package/cfg/release_pm3g.h package/cfg/release_pm3g.xdl: override _PROG_NAME := release.xm3g
package/cfg/release_pm3g.c: package/cfg/release_pm3g.cfg
package/cfg/release_pm3g.xdc.inc: package/cfg/release_pm3g.xdl
package/cfg/release_pm3g.xdl package/cfg/release_pm3g.c: .interfaces

clean:: clean,m3g
	-$(RM) package/cfg/release_pm3g.cfg
	-$(RM) package/cfg/release_pm3g.dep
	-$(RM) package/cfg/release_pm3g.c
	-$(RM) package/cfg/release_pm3g.xdc.inc

clean,m3g::
	-$(RM) release.pm3g
.executables,m3g .executables: release.xm3g

release.xm3g: |release.pm3g

-include package/cfg/release.xm3g.mak
release.xm3g: package/cfg/release_pm3g.om3g 
	$(RM) $@
	@$(MSG) lnkm3g $@ ...
	$(RM) $(XDCCFGDIR)$@.map
	$(gnu.targets.arm.M3.rootDir)/bin/arm-none-eabi-gcc -mthumb -march=armv7-m -nostartfiles -Wl,-static -Wl,--gc-sections    -o $@ package/cfg/release_pm3g.om3g -Wl,-T,package/cfg/release_pm3g.xdl   -L/home/bjorn/ti/simplelink_cc2640r2_sdk_4_30_00_08/kernel/tirtos/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/lib/thumb/v7-m -Wl,--start-group -lgcc -lc -lm -Wl,--end-group --specs=nano.specs -Wl,-Map=$(XDCCFGDIR)/$@.map --specs=nosys.specs
	
release.xm3g: export LD_LIBRARY_PATH=

release.test test,m3g test: release.xm3g.test

release.xm3g.test:: release.xm3g
ifeq (,$(_TESTLEVEL))
	@$(MAKE) -R -r --no-print-directory -f $(XDCROOT)/packages/xdc/bld/xdc.mak _TESTLEVEL=1 release.xm3g.test
else
	@$(MSG) running $<  ...
	$(call EXEC.release.xm3g, ) 
endif

clean,m3g::
	-$(RM) $(wildcard .tmp,release.xm3g,*)


clean:: clean,m3g

clean,m3g::
	-$(RM) release.xm3g
%,copy:
	@$(if $<,,$(MSG) don\'t know how to build $*; exit 1)
	@$(MSG) cp $< $@
	$(RM) $@
	$(CP) $< $@
release_pm3g.om3g,copy : package/cfg/release_pm3g.om3g
release_pm3g.sm3g,copy : package/cfg/release_pm3g.sm3g

$(XDCCFGDIR)%.c $(XDCCFGDIR)%.h $(XDCCFGDIR)%.xdl: $(XDCCFGDIR)%.cfg $(XDCROOT)/packages/xdc/cfg/Main.xs | .interfaces
	@$(MSG) "configuring $(_PROG_NAME) from $< ..."
	$(CONFIG) $(_PROG_XSOPTS) xdc.cfg $(_PROG_NAME) $(XDCCFGDIR)$*.cfg $(XDCCFGDIR)$*

.PHONY: release,configPkg
ifeq (,$(MK_NOGENDEPS))
-include package/rel/configPkg.tar.dep
endif
package/rel/configPkg/configPkg/package/package.rel.xml: package/package.bld.xml
package/rel/configPkg/configPkg/package/package.rel.xml: package/build.cfg
package/rel/configPkg/configPkg/package/package.rel.xml: package/package.xdc.inc
package/rel/configPkg/configPkg/package/package.rel.xml: .force
	@$(MSG) generating external release references $@ ...
	$(XS) $(JSENV) -f $(XDCROOT)/packages/xdc/bld/rel.js $(MK_RELOPTS) . $@

configPkg.tar: package/rel/configPkg.xdc.inc package/rel/configPkg/configPkg/package/package.rel.xml
	@$(MSG) making release file $@ "(because of $(firstword $?))" ...
	-$(RM) $@
	$(call MKRELTAR,package/rel/configPkg.xdc.inc,package/rel/configPkg.tar.dep)


release release,configPkg: all configPkg.tar
clean:: .clean
	-$(RM) configPkg.tar
	-$(RM) package/rel/configPkg.xdc.inc
	-$(RM) package/rel/configPkg.tar.dep

clean:: .clean
	-$(RM) .libraries $(wildcard .libraries,*)
clean:: 
	-$(RM) .dlls $(wildcard .dlls,*)
#
# The following clean rule removes user specified
# generated files or directories.
#

ifneq (clean,$(MAKECMDGOALS))
ifeq (,$(wildcard package))
    $(shell $(MKDIR) package)
endif
ifeq (,$(wildcard package/cfg))
    $(shell $(MKDIR) package/cfg)
endif
ifeq (,$(wildcard package/lib))
    $(shell $(MKDIR) package/lib)
endif
ifeq (,$(wildcard package/rel))
    $(shell $(MKDIR) package/rel)
endif
ifeq (,$(wildcard package/internal))
    $(shell $(MKDIR) package/internal)
endif
endif
clean::
	-$(RMDIR) package

include custom.mak