#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from the custom device configuration.
$(call inherit-product, device/nothing/Aerodactyl/device-Pacman.mk)

# Inherit from the LineageOS configuration.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_BRAND := Nothing
PRODUCT_DEVICE := Pacman
PRODUCT_MANUFACTURER := Nothing
PRODUCT_MODEL := A142
PRODUCT_NAME := lineage_Pacman

PRODUCT_GMS_CLIENTID_BASE := android-nothing

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sys_mssi_64_ww_armv82-user 16 BP2A.250605.031.A3 2511282240 release-keys" \
    BuildFingerprint=Nothing/Pacman/Pacman:16/BP2A.250605.031.A3/2511282240:user/release-keys \
    DeviceName=Pacman \
    DeviceProduct=Pacman \
    SystemDevice=Pacman \
    SystemName=Pacman

# Maintainer
MATRIXX_MAINTAINER := Praveen

# Matlog for taking logs
TARGET_INCLUDE_MATLOG := false

# Device supports UDFPS
TARGET_CUSTOM_UDFPS := true

# GMS 
WITH_GMS := true
WITH_EXTRA_GAPPS := true 

WITH_GMS_COMMS_SUITE := false
WITH_GMS_AICORE := true 

# Pixel launcher
TARGET_INCLUDE_PIXEL_LAUNCHER := true 
TARGET_DEFAULT_PIXEL_LAUNCHER := true 

# Basic call recorder
WITH_BCR := false

# surfaceflinger min max
$(call soong_config_set,surfaceflinger,frame_rate_category_high,120)
$(call soong_config_set,surfaceflinger,frame_rate_category_min,60)

# SF boost 
SURFACE_FLINGER_BOOST := true

# Optimized dexopt
TARGET_OPTIMIZED_DEXOPT := true

# Bypass charging
BYPASS_CHARGE_SUPPORTED := false

# HBM mode
HBM_SUPPORTED := true
HBM_NODE := /sys/panel_feature/hbm_mode

# features
USE_REALITY_ENGINE := false

# camera
PRODUCT_NO_CAMERA := true
