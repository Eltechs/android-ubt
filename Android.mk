LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := ubt

$(shell mkdir -p $(TARGET_OUT)/system/vendor/armv7-guest/ )
$(shell cp $(LOCAL_PATH)/ubt_a32a64_bridge `pwd`/$(TARGET_OUT)/vendor/lib64/libubt_a32a64_bridge.so )
$(shell cp -ra $(LOCAL_PATH)/armv7-guest `pwd`/$(TARGET_OUT)/vendor/ )
$(shell chmod 0755 `pwd`/$(TARGET_OUT)/system/vendor/armv7-guest/mediator )





