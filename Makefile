ARCHS = armv7 armv7s arm64

include theos/makefiles/common.mk

BUNDLE_NAME = ASToggle
ASToggle_FILES = Switch.xm
ASToggle_FRAMEWORKS = UIKit
ASToggle_LIBRARIES = flipswitch
ASToggle_INSTALL_PATH = /Library/Switches
ASToggle_LDFLAGS = -lAccessibility

include $(THEOS_MAKE_PATH)/bundle.mk