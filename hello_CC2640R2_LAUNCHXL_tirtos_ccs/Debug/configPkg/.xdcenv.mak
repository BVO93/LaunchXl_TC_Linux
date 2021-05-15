#
_XDCBUILDCOUNT = 0
ifneq (,$(findstring path,$(_USEXDCENV_)))
override XDCPATH = /home/bjorn/ti/simplelink_cc2640r2_sdk_4_30_00_08/source;/home/bjorn/ti/simplelink_cc2640r2_sdk_4_30_00_08/kernel/tirtos/packages
override XDCROOT = /home/bjorn/ti/ccs1031/xdctools_3_62_00_08_core
override XDCBUILDCFG = ./config.bld
endif
ifneq (,$(findstring args,$(_USEXDCENV_)))
override XDCARGS = 
override XDCTARGETS = 
endif
#
ifeq (0,1)
PKGPATH = /home/bjorn/ti/simplelink_cc2640r2_sdk_4_30_00_08/source;/home/bjorn/ti/simplelink_cc2640r2_sdk_4_30_00_08/kernel/tirtos/packages;/home/bjorn/ti/ccs1031/xdctools_3_62_00_08_core/packages;..
HOSTOS = Linux
endif
