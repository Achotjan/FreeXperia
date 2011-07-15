#!/bin/sh

mkdir -p ../../../vendor/se/x10/proprietary

DIRS="
bin
etc/firmware
etc/se/chargemon
lib/egl
lib/hw
"

for DIR in $DIRS; do
	mkdir -p ../../../vendor/se/x10/proprietary/$DIR
done

FILES="
bin/akmd2
bin/eeprom.AR6002
bin/hci_qcomm_init
bin/isp_fw_update
bin/qmuxd
bin/port-bridge
bin/updatemiscta

etc/firmware/yamato_pfp.fw
etc/firmware/yamato_pm4.fw
etc/firmware/camfirm.bin

lib/egl/egl.cfg
lib/egl/libEGL_adreno200.so
lib/egl/libGLESv1_CM_adreno200.so
lib/egl/libGLESv2_adreno200.so
lib/egl/libq3dtools_adreno200.so

lib/hw/copybit.qsd8k.so
lib/hw/sensors.default.so

lib/libaudio.so

lib/libauth.so
lib/libcm.so
lib/libdiag.so
lib/libdll.so
lib/libdsm.so
lib/libdss.so
lib/libgsdi_exp.so
lib/libgsl.so
lib/libgstk_exp.so
lib/libmmgsdilib.so
lib/libnv.so
lib/liboem_rapi.so
lib/liboncrpc.so
lib/libpbmlib.so
lib/libqmi.so
lib/libqueue.so
lib/libril.so
lib/libril-qc-1.so
lib/libwms.so
lib/libwmsts.so

lib/libmmipl.so
lib/libmmjpeg.so
lib/liboemcamera.so

lib/libOmxAacDec.so
lib/libOmxEvrcDec.so
lib/libOmxEvrcEnc.so
lib/libOmxMp3Dec.so
lib/libOmxQcelp13Enc.so
lib/libOmxQcelpDec.so

lib/libmiscta.so
etc/semc/chargemon/anim1.rle
etc/semc/chargemon/anim2.rle
etc/semc/chargemon/anim3.rle
etc/semc/chargemon/anim4.rle
etc/semc/chargemon/anim5.rle
etc/semc/chargemon/anim6.rle
etc/semc/chargemon/anim7.rle
etc/semc/chargemon/anim8.rle

"

for FILE in $FILES; do
	adb pull system/$FILE ../../../vendor/se/x10/proprietary/$FILE
done

