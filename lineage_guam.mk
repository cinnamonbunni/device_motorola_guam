#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/motorola/guam/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_guam
PRODUCT_DEVICE := guam
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto e(7) plus
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="guam_retail-user 10 QPZ30.30-Q3-38-69-14 25018 release-keys" \
    BuildFingerprint=motorola/guam_retail/guam:10/QPZ30.30-Q3-38-69-14/25018:user/release-keys \
    DeviceProduct=guam_retail

# Axion Flags
AXION_MAINTAINER := Zediss_Samaria
TARGET_DISABLE_EPPE := true
TARGET_INCLUDE_AXFX := true
TARGET_ENABLE_BLUR := true
AXION_CAMERA_REAR_INFO := 48,2
AXION_CAMERA_FRONT_INFO := 8
AXION_PROCESSOR := Snapdragon_460
PERF_GOV_SUPPORTED := true
PERF_DEFAULT_GOV := schedutil
PERF_ANIM_OVERRIDE := true
TARGET_DOZE_TAP_PULSE_SUPPORTED := true
TARGET_DOZE_DOUBLE_TAP_PULSE_SUPPORTED := true
TARGET_DOZE_PICKUP_PULSE_SUPPORTED := true
TARGET_DOZE_SIDE_FPS_PULSE_SUPPORTED := true
TARGET_SUPPORTED_REFRESH_RATES := 60
TARGET_IS_LOW_RAM := true
