
##############################################################
#
# AESDCHAR
#
##############################################################
#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESDCHAR_VERSION  = 'b0f6933794f36961cda7d519d47ee44f53a374a6'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESDCHAR_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-Soha18.git'
AESDCHAR_SITE_METHOD = git
AESDCHAR_GIT_SUBMODULES = YES

AESDCHAR_MODULE_SUBDIRS =  aesd-char-driver

define AESDCHAR_INSTALL_TARGET_CMDS
 	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
 	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin
 	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar-start-stop.sh $(TARGET_DIR)/etc/init.d/S97aesdchar

	$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment8/* $(TARGET_DIR)/bin

endef


$(eval $(generic-package))
$(eval $(kernel-module))

