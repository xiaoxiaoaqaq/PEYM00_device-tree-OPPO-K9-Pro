LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),OP5245)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif