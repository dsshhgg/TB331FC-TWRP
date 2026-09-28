#
# OrangeFox product makefile - Lenovo Xiaoxin Pad 2024 (TB331FC)
#
# Usage: place under device/lenovo/TB331FC/
#

# Inherit TWRP hardware config (partitions, modules, fstab, init rc)
$(call inherit-product, device/lenovo/TB331FC/device.mk)

# Product identity
PRODUCT_NAME := fox_TB331FC
PRODUCT_DEVICE := TB331FC
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Xiaoxin Pad 2024
PRODUCT_MANUFACTURER := Lenovo

# Device version string (shown on OrangeFox main screen)
TW_DEVICE_VERSION := TB331FC-Fox-12.1

# ---------------------------------------------------------------------------
# OrangeFox build variables
# ---------------------------------------------------------------------------
# A/B device with a dedicated recovery partition (not ramdisk-in-boot).
# Also exported from vendorsetup.sh; kept here as BoardConfig-side truth.
FOX_AB_DEVICE := 1
OF_AB_DEVICE_WITH_RECOVERY_PARTITION := 1

# Dynamic partitions (Lenovo group)
OF_DYNAMIC_PARTITIONS := true

# OrangeFox version
FOX_VERSION := R12.1
FOX_BUILD_TYPE := Stable

# 8GB device: do not enable large swap
FOX_USE_SWAP := 0

# ---------------------------------------------------------------------------
# A/B + OTA (reusing verified TWRP-side config)
# ---------------------------------------------------------------------------
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += \
    boot \
    dtbo \
    init_boot \
    system \
    vendor \
    odm \
    product \
    system_ext

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_BUILD_SUPER_PARTITION := false