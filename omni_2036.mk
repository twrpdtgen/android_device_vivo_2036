#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from 2036 device
$(call inherit-product, device/vivo/2036/device.mk)

PRODUCT_DEVICE := 2036
PRODUCT_NAME := omni_2036
PRODUCT_BRAND := vivo
PRODUCT_MODEL := V2036
PRODUCT_MANUFACTURER := vivo

PRODUCT_GMS_CLIENTID_BASE := android-vivo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="qssi-user 12 SP1A.210812.003 compiler05132104 release-keys"

BUILD_FINGERPRINT := vivo/2036N/2036:12/SP1A.210812.003/compiler05132104:user/release-keys
