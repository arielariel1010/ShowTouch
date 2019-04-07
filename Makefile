include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ShowTouch
ShowTouch_FILES = Tweak.xm
ShowTouch_LIBRARIES = colorpicker

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += showtouch
include $(THEOS_MAKE_PATH)/aggregate.mk
