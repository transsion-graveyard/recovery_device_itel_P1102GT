LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),P1102GT)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
