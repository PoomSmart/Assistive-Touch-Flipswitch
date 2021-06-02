PACKAGE_VERSION = 1.0.0
ARCHS = arm64 arm64e
TARGET = iphone:clang:latest:11.0

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = AssistiveTouchFS
AssistiveTouchFS_FILES = Switch.xm
AssistiveTouchFS_LIBRARIES = Accessibility flipswitch
AssistiveTouchFS_INSTALL_PATH = /Library/Switches

include $(THEOS_MAKE_PATH)/bundle.mk
