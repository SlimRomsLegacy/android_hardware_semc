LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_ARM_MODE := arm
LOCAL_MODULE := libglib
LOCAL_SRC_FILES := libglib.a
LOCAL_MODULE_CLASS := STATIC_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .a
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := libglib.a
LOCAL_C_INCLUDES += include
LOCAL_WHOLE_STATIC_LIBRARIES:= libiconv libintl libglib
LOCAL_MODULE := libglib
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

