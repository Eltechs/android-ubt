LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := ubt

$(shell mkdir -p $(TARGET_OUT_VENDOR)/lib64 )
$(shell mkdir -p $(TARGET_OUT_VENDOR)/armv7-guest )
$(shell mkdir -p $(TARGET_OUT_VENDOR)/bin )
$(shell cp $(LOCAL_PATH)/ubt_a32a64_bridge $(TARGET_OUT_VENDOR)/lib64/libubt_a32a64_bridge.so )
$(shell cp $(LOCAL_PATH)/libubthc.so $(TARGET_OUT_VENDOR)/lib64/libubthc.so )
$(shell cp -ra $(LOCAL_PATH)/armv7-guest $(TARGET_OUT_VENDOR)/ )
$(shell cp $(LOCAL_PATH)/mediator $(TARGET_OUT_VENDOR)/bin/ )
