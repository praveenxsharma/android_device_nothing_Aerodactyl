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
    BuildDesc="sys_mssi_64_ww_armv82-user 16 BP2A.250605.031.A3 2509172235 release-keys" \
    BuildFingerprint=Nothing/Pacman/Pacman:16/BP2A.250605.031.A3/2509172235:user/release-keys \
    DeviceName=Pacman \
    DeviceProduct=Pacman \
    SystemDevice=Pacman \
    SystemName=Pacman

PRODUCT_SYSTEM_PROPERTIES += \
    ro.mist.display=1084x2412_120 hz \
    ro.mist.battery=5000mah \
    ro.mist.soc=Mediatek_Dimensity_7200_pro \
    ro.mist.camera=50+50MP \
    ro.mist.front=32MP \
    ro.mist.platform=MT6886 \
    ro.mist.screen=6.7'_Flexible_Amoled \
    ro.mist.device.name=Nothing_Phone_2a \

#Build

MISTOS_MAINTAINER := itachi
WITH_GMS := true
TARGET_USES_PICO_GAPPS := false
TARGET_ENABLE_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true
BYPASS_CHARGE_SUPPORTED := false
TARGET_DEFAULT_PIXEL_LAUNCHER := false
TARGET_DISABLE_EPPE := true
