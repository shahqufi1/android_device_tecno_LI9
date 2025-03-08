#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

# Define device-specific variables
export DEVICE=LI9
export VENDOR=tecno

# Run the setup-makefiles script from the device directory itself (since there's no common tree)
"./../../${VENDOR}/${DEVICE}/setup-makefiles.sh" "$@"
