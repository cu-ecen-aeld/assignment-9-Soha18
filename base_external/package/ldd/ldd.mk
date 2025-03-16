
##############################################################
#
# LDD
#
##############################################################
#TODO: Fill up the contents below in order to reference your assignment 3 git contents
LDD_VERSION  = '49df5f93ed66da823f213aecb1c717144ed6b513'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-Soha18.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = NO

LDD_MODULE_SUBDIRS =  misc-modules
LDD_MODULE_SUBDIRS +=  scull

$(eval $(generic-package))
$(eval $(kernel-module))

