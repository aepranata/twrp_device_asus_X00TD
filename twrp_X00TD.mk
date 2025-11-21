#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from X00TD device
$(call inherit-product, device/asus/X00TD/device.mk)

PRODUCT_DEVICE := X00TD
PRODUCT_NAME := twrp_X00TD
PRODUCT_BRAND := asus
PRODUCT_MODEL := X00TD
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus-tpin

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sdm660_64-user 8.1.0 OPM1 2305 release-keys"

BUILD_FINGERPRINT := Android/sdm660_64/sdm660_64:8.1.0/OPM1/15.2016.1810.334-20181019:user/release-keys
