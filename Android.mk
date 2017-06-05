LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := ubt

$(shell mkdir -p `realpath $(TARGET_OUT_VENDOR)`/armv7-guest )
$(shell cp $(LOCAL_PATH)/ubt_a32a64_bridge `realpath $(TARGET_OUT_VENDOR)/lib64`/libubt_a32a64_bridge.so )
$(shell cp -ra $(LOCAL_PATH)/armv7-guest `realpath $(TARGET_OUT_VENDOR)`/ )
$(shell chmod 0755 `realpath $(TARGET_OUT_VENDOR)`/armv7-guest/mediator )





