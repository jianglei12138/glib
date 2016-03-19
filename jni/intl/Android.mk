
LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := static/$(TARGET_ARCH_ABI)/libgnuintl.a
LOCAL_MODULE:= intl
include $(PREBUILT_STATIC_LIBRARY)
