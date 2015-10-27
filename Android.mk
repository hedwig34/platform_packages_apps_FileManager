LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(call all-subdir-java-files)

LOCAL_PACKAGE_NAME := FileManager
LOCAL_CERTIFICATE := platform

LOCAL_STATIC_JAVA_LIBRARIES := \
    android-support-v4 \
    android-support-v13 \
    android-support-v7-appcompat \
    android-support-v7-recyclerview

LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/res
LOCAL_RESOURCE_DIR += prebuilts/sdk/current/support/v7/appcompat/res
LOCAL_RESOURCE_DIR += prebuilts/sdk/current/support/v7/recyclerview/res
LOCAL_RESOURCE_DIR += $(LOCAL_PATH)/libs/FloatingActionButton/res
LOCAL_RESOURCE_DIR += $(LOCAL_PATH)/libs/RootTools/res
LOCAL_RESOURCE_DIR += $(LOCAL_PATH)/libs/RootShell/res

LOCAL_AAPT_FLAGS += --auto-add-overlay \
        --extra-packages android.support.v7.appcompat \
        --extra-packages android.support.v7.recyclerview \
        --extra-packages com.melnykov.fab \
        --extra-packages com.nineoldandroids \
        --extra-packages com.anthonycr.grant \
        --extra-packages com.stericson.RootTools \
        --extra-packages com.stericson.RootShell

include $(BUILD_PACKAGE)
