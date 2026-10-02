#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/socrates

# Inherit from sm8550-common
include device/xiaomi/sm8550-common/BoardConfigCommon.mk

# Display
TARGET_SCREEN_DENSITY := 540

# Kernel
BOARD_USES_SOONG_KERNEL := true
SOONG_KERNEL_MODULE := //device/xiaomi/socrates:kernel
TARGET_KERNEL_VERSION := 5.15




# System properties
TARGET_ODM_PROP += $(DEVICE_PATH)/odm.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

include vendor/xiaomi/socrates/BoardConfigVendor.mk
