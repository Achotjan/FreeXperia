#!/bin/sh

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

DEVICE=x10

mkdir -p ../../../vendor/se/$DEVICE/proprietary
adb pull /system/bin/akmd2 ../../../vendor/se/$DEVICE/proprietary/bin/akmd2
chmod 755 ../../../vendor/se/$DEVICE/proprietary/bin/akmd2
adb pull /system/bin/mm-venc-omx-test ../../../vendor/se/$DEVICE/proprietary/bin/mm-venc-omx-test
chmod 755 ../../../vendor/se/$DEVICE/proprietary/bin/mm-venc-omx-test
adb pull /system/bin/xrecovery.tar ../../../vendor/se/$DEVICE/proprietary/bin/xrecovery.tar
adb pull /system/bin/charger ../../../vendor/se/$DEVICE/proprietary/bin/charger
chmod 755 ../../../vendor/se/$DEVICE/proprietary/bin/charger
adb pull /system/etc/01_qcomm_omx.cfg ../../../vendor/se/$DEVICE/proprietary/etc/01_qcomm_omx.cfg
adb pull /system/etc/DualMicControl.txt ../../../vendor/se/$DEVICE/proprietary/etc/DualMicControl.txt
adb pull /system/etc/firmware/yamato_pfp.fw ../../../vendor/se/$DEVICE/proprietary/etc/firmware/yamato_pfp.fw
adb pull /system/etc/firmware/yamato_pm4.fw ../../../vendor/se/$DEVICE/proprietary/etc/firmware/yamato_pm4.fw
adb pull /system/etc/semc/chargemon/anim1.rle ../../../vendor/se/$DEVICE/proprietary/etc/semc/chargemon/anim1.rle
adb pull /system/etc/semc/chargemon/anim2.rle ../../../vendor/se/$DEVICE/proprietary/etc/semc/chargemon/anim2.rle
adb pull /system/etc/semc/chargemon/anim3.rle ../../../vendor/se/$DEVICE/proprietary/etc/semc/chargemon/anim3.rle
adb pull /system/etc/semc/chargemon/anim4.rle ../../../vendor/se/$DEVICE/proprietary/etc/semc/chargemon/anim4.rle
adb pull /system/etc/semc/chargemon/anim5.rle ../../../vendor/se/$DEVICE/proprietary/etc/semc/chargemon/anim5.rle
adb pull /system/etc/semc/chargemon/anim6.rle ../../../vendor/se/$DEVICE/proprietary/etc/semc/chargemon/anim6.rle
adb pull /system/etc/semc/chargemon/anim7.rle ../../../vendor/se/$DEVICE/proprietary/etc/semc/chargemon/anim7.rle
adb pull /system/etc/semc/chargemon/anim8.rle ../../../vendor/se/$DEVICE/proprietary/etc/semc/chargemon/anim8.rle
adb pull /system/lib/egl/libEGL_adreno200.so ../../../vendor/se/$DEVICE/proprietary/lib/egl/libEGL_adreno200.so
adb pull /system/lib/egl/libGLESv1_CM_adreno200.so ../../../vendor/se/$DEVICE/proprietary/lib/egl/libGLESv1_CM_adreno200.so
adb pull /system/lib/egl/libGLESv2_adreno200.so ../../../vendor/se/$DEVICE/proprietary/lib/egl/libGLESv2_adreno200.so
adb pull /system/lib/egl/libq3dtools_adreno200.so ../../../vendor/se/$DEVICE/proprietary/lib/egl/libq3dtools_adreno200.so
adb pull /system/lib/libcamera.so ../../../vendor/se/$DEVICE/proprietary/lib/libcamera.so
adb pull /system/lib/libgps.so ../../../vendor/se/$DEVICE/proprietary/lib/libgps.so
adb pull /system/lib/libgsl.so ../../../vendor/se/$DEVICE/proprietary/lib/libgsl.so
adb pull /system/lib/libril-qc-1.so ../../../vendor/se/$DEVICE/proprietary/lib/libril-qc-1.so
adb pull /system/lib/liboemcamera.so ../../../vendor/se/$DEVICE/proprietary/lib/liboemcamera.so
adb pull /system/lib/libOmxVdec.so ../../../vendor/se/$DEVICE/proprietary/lib/libOmxVdec.so
adb pull /system/lib/libmiscta.so ../../../vendor/se/$DEVICE/proprietary/lib/libmiscta.so
adb pull /system/lib/libauth.so ../../../vendor/se/$DEVICE/proprietary/lib/libauth.so
adb pull /system/lib/libcm.so ../../../vendor/se/$DEVICE/proprietary/lib/libcm.so
adb pull /system/lib/libdiag.so ../../../vendor/se/$DEVICE/proprietary/lib/libdiag.so
adb pull /system/lib/libdll.so ../../../vendor/se/$DEVICE/proprietary/lib/libdll.so
adb pull /system/lib/libdsm.so ../../../vendor/se/$DEVICE/proprietary/lib/libdsm.so
adb pull /system/lib/libdss.so ../../../vendor/se/$DEVICE/proprietary/lib/libdss.so
adb pull /system/lib/libgsdi_exp.so ../../../vendor/se/$DEVICE/proprietary/lib/libgsdi_exp.so
adb pull /system/lib/libgstk_exp.so ../../../vendor/se/$DEVICE/proprietary/lib/libgstk_exp.so
adb pull /system/lib/libmmgsdilib.so ../../../vendor/se/$DEVICE/proprietary/lib/libmmgsdilib.so
adb pull /system/lib/libnv.so ../../../vendor/se/$DEVICE/proprietary/lib/libnv.so
adb pull /system/lib/liboem_rapi.so ../../../vendor/se/$DEVICE/proprietary/lib/liboem_rapi.so
adb pull /system/lib/liboncrpc.so ../../../vendor/se/$DEVICE/proprietary/lib/liboncrpc.so
adb pull /system/lib/libpbmlib.so ../../../vendor/se/$DEVICE/proprietary/lib/libpbmlib.so
adb pull /system/lib/libqmi.so ../../../vendor/se/$DEVICE/proprietary/lib/libqmi.so
adb pull /system/lib/libqueue.so ../../../vendor/se/$DEVICE/proprietary/lib/libqueue.so
adb pull /system/lib/libwms.so ../../../vendor/se/$DEVICE/proprietary/lib/libwms.so
adb pull /system/lib/libwmsts.so ../../../vendor/se/$DEVICE/proprietary/lib/libwmsts.so
(cat << EOF) | sed s/__DEVICE__/$DEVICE/g > ../../../vendor/se/$DEVICE/$DEVICE-vendor-blobs.mk

# Prebuilt libraries x10
PRODUCT_COPY_FILES := \\
    vendor/se/__DEVICE__/proprietary/lib/libgps.so:obj/lib/libgps.so \\
    vendor/se/__DEVICE__/proprietary/lib/libcamera.so:obj/lib/libcamera.so

# blobs necessary for x10
PRODUCT_COPY_FILES += \\
    vendor/se/__DEVICE__/proprietary/bin/akmd2:/system/bin/akmd2 \\
    vendor/se/__DEVICE__/proprietary/bin/mm-venc-omx-test:/system/bin/mm-venc-omx-test \\
    vendor/se/__DEVICE__/proprietary/etc/01_qcomm_omx.cfg:/system/etc/01_qcomm_omx.cfg \\
    vendor/se/__DEVICE__/proprietary/etc/firmware/yamato_pfp.fw:/system/etc/firmware/yamato_pfp.fw \\
    vendor/se/__DEVICE__/proprietary/etc/firmware/yamato_pm4.fw:/system/etc/firmware/yamato_pm4.fw \\
    vendor/se/__DEVICE__/proprietary/lib/egl/libEGL_adreno200.so:/system/lib/egl/libEGL_adreno200.so \\
    vendor/se/__DEVICE__/proprietary/lib/egl/libGLESv1_CM_adreno200.so:/system/lib/egl/libGLESv1_CM_adreno200.so \\
    vendor/se/__DEVICE__/proprietary/lib/egl/libGLESv2_adreno200.so:/system/lib/egl/libGLESv2_adreno200.so \\
    vendor/se/__DEVICE__/proprietary/lib/egl/libq3dtools_adreno200.so:/system/lib/egl/libq3dtools_adreno200.so \\
    vendor/se/__DEVICE__/proprietary/lib/libcamera.so:/system/lib/libcamera.so \\
    vendor/se/__DEVICE__/proprietary/lib/libgps.so:/system/lib/libgps.so \\
    vendor/se/__DEVICE__/proprietary/lib/libgsl.so:/system/lib/libgsl.so \\
    vendor/se/__DEVICE__/proprietary/lib/libril-qc-1.so:/system/lib/libril_qc_1.so \\
    vendor/se/__DEVICE__/proprietary/lib/liboemcamera.so:/system/lib/liboemcamera.so \\
    vendor/se/__DEVICE__/proprietary/lib/libOmxVdec.so:/system/lib/libOmxVdec.so 

endif

EOF

./setup-makefiles.sh
