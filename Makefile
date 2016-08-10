DEBUG = 0
PACKAGE_VERSION = 0.0.2

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = ASToggle
ASToggle_FILES = Switch.xm
ASToggle_LIBRARIES = flipswitch
ASToggle_INSTALL_PATH = /Library/Switches
ASToggle_LDFLAGS = -lAccessibility

include $(THEOS_MAKE_PATH)/bundle.mk