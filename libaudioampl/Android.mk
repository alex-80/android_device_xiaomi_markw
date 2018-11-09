LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_C_INCLUDES += \
    hardware/qcom/audio/hal/msm8916/ \
    hardware/qcom/audio/hal/ \
    hardware/qcom/audio/hal/audio_extn \
     $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include \
		 external/tinyalsa/include \
		 external/tinycompress/include \
		 hardware/libhardware/include \
		 system/media/audio_route/include \
		 system/media/audio_utils/include \
		 device/xiaomi/markw/power \
LOCAL_ADDITIONAL_DEPENDENCIES += $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr
LOCAL_SHARED_LIBRARIES := liblog \
 libutils \
 libcutils \
 libtinyalsa \
 libtinycompress
LOCAL_SRC_FILES := audio_amplifier.c
LOCAL_MODULE := audio_amplifier.msm8953
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_MODULE_TAGS := optional
LOCAL_ADDITIONAL_DEPENDENCIES += $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr
LOCAL_VENDOR_MODULE := true
include $(BUILD_SHARED_LIBRARY)
