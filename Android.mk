LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := ubt

$(shell mkdir -p $(TARGET_OUT_VENDOR)/lib64 )
$(shell mkdir -p $(TARGET_OUT_VENDOR)/armv7-guest )
$(shell cp $(LOCAL_PATH)/ubt_a32a64_bridge $(TARGET_OUT_VENDOR)/lib64/libubt_a32a64_bridge.so )
$(shell cp -ra $(LOCAL_PATH)/armv7-guest $(TARGET_OUT_VENDOR)/ )
$(shell chmod 0755 $(TARGET_OUT_VENDOR)/armv7-guest/system/bin/mediator )





