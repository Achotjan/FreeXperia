USE_CAMERA_STUB := false

TARGET_BOARD_PLATFORM := msm7k
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_NO_BOOTLOADER := true
TARGET_NO_RECOVERY := true
TARGET_NO_KERNEL := true

# ARMv6-compatible processor rev 5 (v6l)
TARGET_CPU_ABI := armeabi-v6j
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv6j

# Explicitly enable JIT for dalvik and browser
WITH_JIT := true
ENABLE_JSC_JIT:=true

# Wifi related defines
##BOARD_WPA_SUPPLICANT_DRIVER := CUSTOM
#BOARD_WPA_SUPPLICANT_DRIVER := WEXT
##BOARD_WPA_SUPPLICANT_PRIVATE_LIB := libWifiApi
##BOARD_WLAN_TI_STA_DK_ROOT   := system/wlan/ti/sta_dk_4_0_4_32
#WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/tiwlan_drv.ko"
#WIFI_DRIVER_MODULE_ARG      := ""
#WIFI_DRIVER_MODULE_NAME     := "tiwlan_drv"
#WIFI_FIRMWARE_LOADER        := "tiwlan_loader"

# Wifi
USES_TI_WL1271 := true
BOARD_WPA_SUPPLICANT_DRIVER := CUSTOM
BOARD_WLAN_DEVICE           := wl1271
WPA_SUPPLICANT_VERSION      := VER_0_6_X
WIFI_DRIVER_MODULE_PATH     := "/system/etc/wifi/tiwlan_drv.ko"
WIFI_DRIVER_MODULE_NAME     := "tiwlan_drv"
WIFI_FIRMWARE_LOADER        := "wlan_loader"


BOARD_GPS_LIBRARIES := libgps librpc

BOARD_USES_GENERIC_AUDIO := false
#BOARD_USES_ALSA_AUDIO := true
#BUILD_WITH_ALSA_UTILS := true

BUILD_PV_VIDEO_ENCODERS :=true
#ENABLE_PV_LOGGING:=true

# Use HTC USB Function Switch to enable tethering via USB
#BOARD_USE_HTC_USB_FUNCTION_SWITCH := true

#BOARD_USE_HTC_LIBSENSORS := true
#BOARD_USE_HERO_LIBSENSORS := true
#BOARD_USES_QCOM_LIBS := true

BOARD_KERNEL_CMDLINE := no_console_suspend=1 console=null
BOARD_KERNEL_BASE := 0x19200000

BOARD_HAVE_BLUETOOTH := true

BOARD_VENDOR_USE_AKMD := akm8973

#BOARD_VENDOR_QCOM_AMSS_VERSION := 6355

# The size of a block that can be marked bad.
BOARD_FLASH_BLOCK_SIZE := 131072
#BOARD_CAMERA_LIBRARIES := libcameraservice libcamera

# OpenGL drivers config file path
BOARD_EGL_CFG := device/se/x10mini/egl.cfg

# No authoring clock for OpenCore
# BOARD_NO_PV_AUTHORING_CLOCK := true

# Use Eclair libcamera

BOARD_USES_ECLAIR_LIBCAMERA := true

# No fallback font by default (space savings)
# NO_FALLBACK_FONT:=true

TARGET_BOOTLOADER_BOARD_NAME := x10mini
TARGET_OTA_ASSERT_DEVICE := x10mini
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_BOOTLOADER_BOARD_NAME=x10mini

# cat /proc/mtd 
#dev:    size   erasesize  name
#mtd0: 0ce00000 00020000 "system"
#mtd1: 03200000 00020000 "cache"
#mtd2: 00040000 00020000 "appslog"
#mtd3: 0d3c0000 00020000 "userdata"
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00280000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0ce00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0d3c0000

