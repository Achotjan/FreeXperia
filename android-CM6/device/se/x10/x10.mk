#
# Copyright (C) 2011 The Android And FreeXperia Open Source Project
#                     Achotjan @ XDA Developper
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

#
# This is the product configuration for a generic GSM es209ra,
# not specialized for any geography.
#

## (1) First, the most specific values, i.e. the aspects that are specific to GSM

PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=$(TOP)/device/se/x10/prelink-linux-arm-x10.map
## 
PRODUCT_COPY_FILES += \
    device/se/x10/init.es209ra.rc:root/init.es209ra.rc

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240 \
    rild.libpath=/system/lib/libril-qc-1.so \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15

# Default network type.
# 0 => WCDMA preferred.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.default_network=0

# AGPS otpions
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.def.agps.mode=2

# The OpenGL ES API level that is natively supported by this device.
# This is a 16.16 fixed point number
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072

# This is a high density device with more memory, so larger vm heaps for it.
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapsize=32m

## (2) Also get non-open-source GSM-specific aspects if available
$(call inherit-product-if-exists, vendor/se/x10/x10-vendor.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.media.dec.jpeg.memcap=20000000

DEVICE_PACKAGE_OVERLAYS += device/se/x10/overlay

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml

## Camera proprietaries
PRODUCT_COPY_FILES += \
    vendor/se/x10/proprietary/lib/libcamera.so:obj/lib/libcamera.so \
    vendor/se/x10/proprietary/lib/libcamera.so:system/lib/libcamera.so \
    vendor/se/x10/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so 


## device propietaries for cm_6.2.0_RC1
#PRODUCT_COPY_FILES += \
#vendor/se/x10/proprietary/lib/libOmxCore.so:system/lib/libOmxCore.so \
#vendor/se/x10/proprietary/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
#vendor/se/x10/proprietary/bin/mm-venc-omx-test:system/bin/mm-venc-omx-test \
#vendor/se/x10/proprietary/lib/libOmxVdec.so:system/lib/libOmxVdec.so \
#vendor/se/x10/proprietary/lib/libomx_sharedlibrary.so:system/lib/libomx_sharedlibrary.so \
#vendor/se/x10/proprietary/lib/libomx_aacdec_sharedlibrary.so:system/lib/libomx_aacdec_sharedlibrary.so \
#vendor/se/x10/proprietary/lib/libomx_amrdec_sharedlibrary.so:system/lib/libomx_amrdec_sharedlibrary.so \
#vendor/se/x10/proprietary/lib/libomx_amrenc_sharedlibrary.so:system/lib/libomx_amrenc_sharedlibrary.so \
#vendor/se/x10/proprietary/lib/libomx_avcdec_sharedlibrary.so:system/lib/libomx_avcdec_sharedlibrary.so \
#vendor/se/x10/proprietary/lib/libomx_m4vdec_sharedlibrary.so:system/lib/libomx_m4vdec_sharedlibrary.so \
#vendor/se/x10/proprietary/lib/libomx_mp3dec_sharedlibrary.so:system/lib/libomx_mp3dec_sharedlibrary.so 

## device propietaries
PRODUCT_COPY_FILES += \
vendor/se/x10/proprietary/lib/libc_malloc_debug_leak.so:system/lib/libc_malloc_debug_leak.so \
vendor/se/x10/proprietary/lib/libc_malloc_debug_qemu.so:system/lib/libc_malloc_debug_qemu.so \
vendor/se/x10/proprietary/lib/libauth.so:system/lib/libauth.so \
vendor/se/x10/proprietary/lib/libcm.so:system/lib/libcm.so \
vendor/se/x10/proprietary/lib/libdiag.so:system/lib/libdiag.so \
vendor/se/x10/proprietary/lib/libdll.so:system/lib/libdll.so \
vendor/se/x10/proprietary/lib/libdsm.so:system/lib/libdsm.so \
vendor/se/x10/proprietary/lib/libdss.so:system/lib/libdss.so \
vendor/se/x10/proprietary/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \
vendor/se/x10/proprietary/lib/libgstk_exp.so:system/lib/libgstk_exp.so \
vendor/se/x10/proprietary/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \
vendor/se/x10/proprietary/lib/libnv.so:system/lib/libnv.so \
vendor/se/x10/proprietary/lib/liboem_rapi.so:system/lib/liboem_rapi.so \
vendor/se/x10/proprietary/lib/liboncrpc.so:system/lib/liboncrpc.so \
vendor/se/x10/proprietary/lib/libpbmlib.so:system/lib/libpbmlib.so \
vendor/se/x10/proprietary/lib/libqmi.so:system/lib/libqmi.so \
vendor/se/x10/proprietary/lib/libqueue.so:system/lib/libqueue.so \
vendor/se/x10/proprietary/lib/libwms.so:system/lib/libwms.so \
vendor/se/x10/proprietary/lib/libwmsts.so:system/lib/libwmsts.so \
vendor/se/x10/proprietary/lib/libril-qc-1.so:system/lib/libril-qc-1.so \
vendor/se/x10/proprietary/lib/libhtc_acoustic.so:system/lib/libhtc_acoustic.so 

## sony ericson chargemon animation and FreeXperia logo moded by Achotjan
PRODUCT_COPY_FILES += \
vendor/se/x10/proprietary/etc/semc/chargemon/anim1.rle:system/etc/semc/chargemon/anim1.rle \
vendor/se/x10/proprietary/etc/semc/chargemon/anim2.rle:system/etc/semc/chargemon/anim2.rle \
vendor/se/x10/proprietary/etc/semc/chargemon/anim3.rle:system/etc/semc/chargemon/anim3.rle \
vendor/se/x10/proprietary/etc/semc/chargemon/anim4.rle:system/etc/semc/chargemon/anim4.rle \
vendor/se/x10/proprietary/etc/semc/chargemon/anim5.rle:system/etc/semc/chargemon/anim5.rle \
vendor/se/x10/proprietary/etc/semc/chargemon/anim6.rle:system/etc/semc/chargemon/anim6.rle \
vendor/se/x10/proprietary/etc/semc/chargemon/anim7.rle:system/etc/semc/chargemon/anim7.rle \
vendor/se/x10/proprietary/etc/semc/chargemon/anim8.rle:system/etc/semc/chargemon/anim8.rle \
vendor/se/x10/proprietary/media/bootanimation.zip:system/media/bootanimation.zip

## advenced feature   
PRODUCT_COPY_FILES += \
vendor/se/x10/proprietary/bin/charger:system/bin/charger \
vendor/se/x10/proprietary/bin/chargemon:system/bin/chargemon \
vendor/se/x10/proprietary/bin/xrecovery.tar:system/bin/xrecovery.tar \
vendor/se/x10/proprietary/etc/sensors.conf:system/etc/sensors.conf \
vendor/se/x10/proprietary/etc/DualMicControl.txt:system/etc/DualMicControl.txt \
vendor/se/x10/proprietary/etc/hw_config.sh:system/etc/hw_config.sh 
#vendor/se/x10/proprietary/bin/su:system/bin/su \
#vendor/se/x10/proprietary/bin/busybox:system/bin/busybox 


# media config xml file
PRODUCT_COPY_FILES += \
    vendor/se/x10/proprietary/etc/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_PACKAGES += \
    sensors.es209ra \
    lights.es209ra \
    librs_jni \
    libOmxCore \
    libOmxVdec \
    libOmxVidEnc \
    libmm-omxcore \
    SETorch 

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# es209ra uses high-density artwork where available
PRODUCT_LOCALES := hdpi

PRODUCT_COPY_FILES += \
    device/se/x10/es209ra_keypad.kl:system/usr/keylayout/es209ra_keypad.kl \
    device/se/x10/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/se/x10/vold.fstab:system/etc/vold.fstab

# stuff common to all HTC phones
$(call inherit-product, device/htc/common/common.mk)
