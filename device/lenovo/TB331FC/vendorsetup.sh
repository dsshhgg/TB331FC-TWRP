#!/bin/bash
FDEVICE="TB331FC"

if [ "$1" = "$FDEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then
    export FOX_AB_DEVICE=1
    export OF_AB_DEVICE_WITH_RECOVERY_PARTITION=1
    export FOX_DELETE_AROMAFM=1
    export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
    add_lunch_combo omni_TB331FC-eng
    add_lunch_combo fox_TB331FC-eng
    add_lunch_combo twrp_TB331FC-eng
fi