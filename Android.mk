#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifneq ($(filter timelm,$(TARGET_DEVICE)),)

include $(call all-makefiles-under,$(LOCAL_PATH))

include $(CLEAR_VARS)

QCA6390_FIRMWARE_SYMLINK := $(TARGET_OUT_VENDOR)/firmware/qca6390
$(QCA6390_FIRMWARE_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@echo "QCA6390 firmware link: $@"
	$(hide) ln -sf /vendor/firmware_mnt/image $(TARGET_OUT_VENDOR)/firmware/qca6390

ALL_DEFAULT_INSTALLED_MODULES += $(QCA6390_FIRMWARE_SYMLINK)

endif
