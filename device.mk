
#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/tecno/LI9
KERNEL_PATH := $(DEVICE_PATH)-kernel

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2436
TARGET_SCREEN_WIDTH := 1080

#TODO
# Overlays
PRODUCT_PACKAGES += \
	FrameworksResOverlayLG8n \
    SettingsProviderOverlayLG8n \
    SystemUIOverlayLG8n

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 32

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator-service.transsion

# Inherit the proprietary files
$(call inherit-product, vendor/tecno/LI9/LI9-vendor.mk)
