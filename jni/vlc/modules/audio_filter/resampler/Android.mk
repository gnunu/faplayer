
LOCAL_PATH := $(call my-dir)

# libbandlimited_resampler_plugin.so

include $(CLEAR_VARS)

LOCAL_ARM_MODE := arm

LOCAL_MODULE := bandlimited_resampler_plugin

LOCAL_CFLAGS += \
    -std=c99 \
    -D__THROW= \
    -DHAVE_CONFIG_H \
    -DNDEBUG \
    -D__PLUGIN__ \
    -DMODULE_STRING=\"bandlimited_resampler\"

LOCAL_CFLAGS += $(COMMON_OPT_CFLAGS)

LOCAL_C_INCLUDES += \
    $(VLCROOT)/compat \
    $(VLCROOT) \
    $(VLCROOT)/include \
    $(VLCROOT)/src

LOCAL_SRC_FILES := \
    bandlimited.c

LOCAL_SHARED_LIBRARIES += vlccore

include $(BUILD_SHARED_LIBRARY)

# libugly_resampler_plugin.so

include $(CLEAR_VARS)

LOCAL_ARM_MODE := arm

LOCAL_MODULE := ugly_resampler_plugin

LOCAL_CFLAGS += \
    -std=c99 \
    -D__THROW= \
    -DHAVE_CONFIG_H \
    -DNDEBUG \
    -D__PLUGIN__ \
    -DMODULE_STRING=\"ugly_resampler\"

LOCAL_C_INCLUDES += \
    $(VLCROOT)/compat \
    $(VLCROOT) \
    $(VLCROOT)/include \
    $(VLCROOT)/src

LOCAL_SRC_FILES := \
    ugly.c

LOCAL_SHARED_LIBRARIES += vlccore

include $(BUILD_SHARED_LIBRARY)

