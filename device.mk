#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8550-common
$(call inherit-product, device/xiaomi/sm8550-common/common.mk)

# Get non-open-source specific aspects
$(call inherit-product, vendor/xiaomi/socrates/socrates-vendor.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_paths_kalama_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_kalama/mixer_paths_kalama_mtp.xml \
    $(LOCAL_PATH)/configs/audio/resourcemanager_kalama_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_kalama/resourcemanager_kalama_mtp.xml\
    device/xiaomi/socrates/configs/privapp-permissions-dolby.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-permissions-dolby.xml
    
# Overlay
PRODUCT_PACKAGES += \
    FrameworkResOverlaySocrates \
    SettingsOverlaySocrates \
    SystemUIOverlaySocrates\
    LunarisDolby

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
    
#防止系统为了省电而频繁关闭音频
PRODUCT_PROPERTY_OVERRIDES += \
    ro.audio.monitor_rotation=true \
    vendor.audio.feature.dap.enable=true \
    vendor.audio.offload.track.enable=true \
    audio.deep_buffer.media=true

#引用avium_common配置    
include device/xiaomi/socrates/avium_common.mk
#添加release-key
$(call inherit-product-if-exists, vendor/lineage-priv/keys.mk)
#引用杜比
$(call inherit-product, hardware/dolby/dolby.mk)



