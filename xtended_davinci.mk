#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, device/xiaomi/davinci/device.mk)

# Inherit some common Xtended stuff.
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := false
TARGET_INCLUDE_WIFI_EXT := true
$(call inherit-product, vendor/xtended/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := davinci
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := xtended_davinci
PRODUCT_MODEL := Mi 9T

# Official MSM-Xtended
XTENDED_BUILD_TYPE := OFFICIAL

# FOD animations
EXTRA_FOD_ANIMATIONS := true

# Inherit from custom vendor
$(call inherit-product, vendor/ANXCamera/config.mk)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
