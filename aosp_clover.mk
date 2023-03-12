#
# Copyright (C) 2018-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/clover/device.mk)

# Inherit some common PixelExtended stuff
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_USES_AOSP_RECOVERY := true
TARGET_SUPPORTS_QUICK_TAP := true
IS_PHONE := true
PEX_MAINTAINER := Traveler

# Required packages
PRODUCT_PACKAGES += \
    androidx.window.extensions
    
# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_clover
PRODUCT_DEVICE := clover
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi PAD 4
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_CHARACTERISTICS := tablet

PRODUCT_SYSTEM_NAME := clover

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT="clover"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
