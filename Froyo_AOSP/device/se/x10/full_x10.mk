# Copyright (C) 2011 The Android And FreeXperia Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file is the build configuration for a full Android
# build for x10 hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

# NFC is a product-level aspect that is too closely tied
# to this device to justify putting in a more generic config,
# but which is also not quite a low-level driver to put in
# device.mk
#PRODUCT_PACKAGES := \
#        libnfc \
#        libnfc_jni \
#        Nfc \
#        Tag

# Get the long list of APNs
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full.mk)


# Inherit from those products. Most specific first.


# Discard inherited values and use our own instead.
PRODUCT_NAME := full_x10
PRODUCT_DEVICE := x10
PRODUCT_BRAND := Android
PRODUCT_MODEL := X10
PRODUCT_MANUFACTURER := Sony Ericsson
ro.modversion=Achotjan_2.2.1_v03.1
