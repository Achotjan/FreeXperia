
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := es209ra-keypad.kcm
LOCAL_MODULE_TAGS:=eng
include $(BUILD_KEY_CHAR_MAP)


include $(call all-makefiles-under,$(LOCAL_PATH))
