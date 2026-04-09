#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from the custom device configuration.
$(call inherit-product, device/nothing/Aerodactyl/device-PacmanPro.mk)

# Inherit from the LineageOS configuration.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_BRAND := Nothing
PRODUCT_DEVICE := PacmanPro
PRODUCT_MANUFACTURER := Nothing
PRODUCT_MODEL := A142P
PRODUCT_NAME := lineage_PacmanPro

PRODUCT_GMS_CLIENTID_BASE := android-nothing

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sys_mssi_64_ww_armv82-user 16 BP2A.250605.031.A3 2602252039 release-keys" \
    BuildFingerprint=Nothing/PacmanPro/PacmanPro:16/BP2A.250605.031.A3/2602252039:user/release-keys \
    DeviceName=PacmanPro \
    DeviceProduct=PacmanPro \
    SystemDevice=PacmanPro \
    SystemName=PacmanPro

# MistOS
# UDFPS support
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true

# Blur
TARGET_ENABLE_BLUR := true

# Pixel Launcher by default
TARGET_INCLUDE_PIXEL_LAUNCHER := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true

# Custom package installer
TARGET_USE_CUSTOM_PACKAGE_INSTALLER := false

# Live wallpapers
TARGET_INCLUDE_LIVE_WALLPAPERS := true

# Quick tap
TARGET_SUPPORTS_QUICK_TAP  := true

# Now Playing
TARGET_SUPPORTS_NOW_PLAYING := true

# Clear Calling
TARGET_SUPPORTS_CLEAR_CALLING := true

# Call Recording Support
TARGET_SUPPORTS_CALL_RECORDING := true

# Bypass charging
BYPASS_CHARGE_SUPPORTED := false

# GMS
WITH_GMS := true
TARGET_USES_MINI_GAPPS := true

# Mist OS Flags
MISTOS_MAINTAINER := Praveen_Sharma

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

#Some other stuff
TARGET_DISABLE_EPPE := true
PERF_ANIM_OVERRIDE := true
