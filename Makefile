PACKAGE_VERSION = 0.0.2
TARGET = iphone:clang:latest:5.0

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = ASToggle
ASToggle_FILES = Switch.xm
ASToggle_LIBRARIES = Accessibility flipswitch
ASToggle_INSTALL_PATH = /Library/Switches

include $(THEOS_MAKE_PATH)/bundle.mk