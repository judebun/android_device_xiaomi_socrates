#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common AOSP configurations
$(call inherit-product, build/make/target/product/full_base_telephony.mk)
$(call inherit-product, build/make/target/product/core_64_bit_only.mk)

# Inherit device-specific configurations
$(call inherit-product, device/xiaomi/socrates/device.mk)

# Inherit LineageOS configurations
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_socrates
PRODUCT_DEVICE := socrates
PRODUCT_MODEL := 22127RK46C
PRODUCT_BRAND := Redmi
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint=Redmi/socrates/socrates:15/AQ3A.250226.002/OS3.0.4.0.VMKCNXM:user/release-keys
    
# 强制将构建标签定义为 release-keys
ifeq ($(TARGET_BUILD_VARIANT),user)
    BUILD_KEYS := release-keys
endif

# 显式覆盖系统属性，确保生成的 build.prop 包含正确标签
PRODUCT_PROPERTY_OVERRIDES += ro.build.tags=release-keys
