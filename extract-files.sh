#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# If we're being sourced by the common script that we called,
# stop right here. No need to go down the rabbit hole.
if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

# Define device-specific variables
export DEVICE=LI9
export VENDOR=tecno

# Run the extract-files script from the device directory itself (no common tree)
"./../../${VENDOR}/${DEVICE}/extract-files.sh" "$@"
