################################################################################
#
# ldd package
#
################################################################################

LDD_VERSION = custom
LDD_SITE = $(TOPDIR)/../ldd3
LDD_SITE_METHOD = local

define LDD_BUILD_CMDS
    $(MAKE) -C $(@D)/misc-modules ARCH=$(KERNEL_ARCH) CROSS_COMPILE=$(TARGET_CROSS) modules
    $(MAKE) -C $(@D)/scull ARCH=$(KERNEL_ARCH) CROSS_COMPILE=$(TARGET_CROSS) modules
endef

define LDD_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 644 $(@D)/misc-modules/*.ko $(TARGET_DIR)/lib/modules/
    $(INSTALL) -D -m 644 $(@D)/scull/*.ko $(TARGET_DIR)/lib/modules/
endef

$(eval $(generic-package))

