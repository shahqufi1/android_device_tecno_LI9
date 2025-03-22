#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/tecno/LI9/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

BOARD_VENDOR := TECNO
PRODUCT_NAME := lineage_LI9
PRODUCT_DEVICE := LI9
PRODUCT_MANUFACTURER := TECNO
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO LI9

# Lunch banner maintainer variable
RISING_MAINTAINER="shahqufi"

# Chipset/Maintainer properties (ro.rising.chipset/ro.rising.maintainer) 
# Set RISING_MAINTAINER for version control 
# (Optional if builder is setting properties via init_<device>.cpp)
PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="Dimensity 6080" \
    RisingMaintainer="shahqufi"

RISING_MAINTAINER := shahqufi

# Disable/enable blur support, false by default
TARGET_ENABLE_BLUR := true

# Whether to ship aperture camera, false by default
PRODUCT_NO_CAMERA := false

# Whether to ship lawnchair launcher, false by default
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true

WITH_GMS := true

TARGET_DEFAULT_PIXEL_LAUNCHER := true

TARGET_INCLUDE_GOOGLE_DIALER := true

# Boot animation
TARGET_SCREEN_HEIGHT := 2424
TARGET_SCREEN_WIDTH := 1080

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=LI9 \
    BuildFingerprint=TECNO/LI9-OP/TECNO-LI9:14/UP1A.231005.007/240130V1177:user/release-keys
