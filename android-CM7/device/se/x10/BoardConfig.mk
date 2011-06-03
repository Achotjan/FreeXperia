

USE_CAMERA_STUB := false

BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := qsd8k
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240
BOARD_VENDOR_QCOM_AMSS_VERSION := 1240

BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun
BOARD_UMS_LUN_FILE := /sys/devices/platform/msm_hsusb/gadget/lun0/file

TARGET_USE_CUSTOM_VIBRATOR_FILE_PATH : /sys/devices/platform/msm_pmic_vibrator/enable


#for video coder/decoder
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_CSR := true

TARGET_NO_BOOTLOADER := true
TARGET_NO_RECOVERY := true
PREBUILT_KERNEL_MODULES:=true
BOARD_HAS_NO_MISC_PARTITION:=true

TARGET_BOARD_PLATFORM := qsd8k
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
BOARD_EGL_CFG := vendor/se/x10/proprietary/lib/egl/egl.cfg

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := es209ra

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := AWEXT
BOARD_WLAN_DEVICE           := wlan0
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/ar6000.ko"
WIFI_DRIVER_MODULE_NAME     := "ar6000"

BOARD_USES_GENERIC_AUDIO := false

BOARD_NO_RGBX_8888 := true

BOARD_KERNEL_CMDLINE := mem=210 no_console_suspend console=null
BOARD_KERNEL_BASE := 0x20000000

TARGET_USES_OLD_LIBSENSORS_HAL := true
BOARD_VENDOR_USE_AKMD := akm8973

TARGET_PROVIDES_LIBRIL := true
TARGET_PROVIDES_LIBAUDIO := true

BOARD_BOOTIMAGE_PARTITION_SIZE     :=0x00380000
BOARD_RECOVERY_PARTITION_SIZE      :=0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE   :=0x160a0000
BOARD_USERDATAIMAGE_PARTITION_SIZE :=0x1d100000
BOARD_FLASH_BLOCK_SIZE             :=131072

WITH_DEXPREOPT := true
#SKIP_THEMES := true