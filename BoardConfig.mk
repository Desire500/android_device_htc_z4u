USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/htc/z4u/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT_CPU := cortex-a5
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_BOARD_PLATFORM := msm7x27a
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_NEON := true
TARGET_CPU_VARIANT := generic
TARGET_CPU_SMP := true
BOARD_KERNEL_CMDLINE := no_console_suspend=1 console=null androidboot.hardware=z4u
BOARD_KERNEL_BASE := 0x3b00000
BOARD_KERNEL_PAGESIZE := 2048
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
COMMON_GLOBAL_CFLAGS += -DHTCLOG
BOARD_USES_QCOM_HARDWARE := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/htc/z4u
TARGET_KERNEL_CONFIG := z4u_defconfig

# fix this up by examining /proc/mtd on a running device
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16776192
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776704
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2013264896
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1342177280
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_SPECIFIC_HEADER_PATH := device/htc/z4u/include

# Wi-Fi
BOARD_WLAN_DEVICE := ath6kl
#BOARD_WPA_SUPPLICANT_DRIVER := NL80211
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_ath6kl
#BOARD_HOSTAPD_DRIVER := NL80211
#BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_ath6kl
WPA_SUPPLICANT_VERSION := VER_0_8_X
WIFI_DRIVER_MODULE_PATH := "/system/wifi/ath6kl_sdio.ko"
WIFI_DRIVER_MODULE_NAME := "ath6kl_sdio"
WIFI_EXT_MODULE_PATH := "/system/wifi/cfg80211.ko"
WIFI_EXT_MODULE_NAME := "cfg80211"
WIFI_TEST_INTERFACE := "sta"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP  := "ap"
WIFI_DRIVER_FW_PATH_P2P := "p2p"

# Audio
TARGET_PROVIDES_LIBAUDIO := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUEDROID_VENDOR_CONF := device/htc/z4u/bluetooth/vnd_z4u.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR ?= device/htc/z4u/bluetooth

#Dalvik
TARGET_ARCH_LOWMEM := true

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := z4u
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Graphics
BOARD_EGL_CFG := device/htc/z4u/prebuilt/system/lib/egl/egl.cfg
TARGET_NO_HW_VSYNC := true
BOARD_USE_SKIA_LCDTEXT := true
USE_OPENGL_RENDERER := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
TARGET_QCOM_DISPLAY_VARIANT := legacy
TARGET_QCOM_HDMI_OUT := false
TARGET_HAVE_HDMI_OUT := false
TARGET_NO_HW_OVERLAY := true
TARGET_USES_GENLOCK := true
TARGET_USES_OVERLAY := true
BOARD_EGL_NEEDS_LEGACY_FB := true
TARGET_QCOM_BSP := true
TARGET_USES_ION := true

# Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 22

# RECOVERY Shared
TARGET_RECOVERY_FSTAB := device/htc/z4u/recovery/recovery.fstab

# Recovery CWM/CM
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun0/file"
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USERIMAGES_USE_EXT4 := true

# Recovery TWRP
#DEVICE_RESOLUTION := 480x800
#TW_INTERNAL_STORAGE_PATH := "/emmc"
#TW_INTERNAL_STORAGE_MOUNT_POINT := "emmc"
#TW_EXTERNAL_STORAGE_PATH := "/sdcard"
#TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
#TW_DEFAULT_EXTERNAL_STORAGE := true
