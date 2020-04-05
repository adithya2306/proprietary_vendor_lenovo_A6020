LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

WT_CAMERA_LIBS := libjni_vsigndetect.so libjni_wtcammosaic.so libjni_wtcamtinyplanet.so

WT_CAMERA_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR_APPS)/WTCamera/lib/arm/,$(notdir $(WT_CAMERA_LIBS)))
$(WT_CAMERA_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "WTCamera lib link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /system/vendor/lib/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(WT_CAMERA_SYMLINKS)
