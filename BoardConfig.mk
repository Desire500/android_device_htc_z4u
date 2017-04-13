USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/htc/z4u/BoardConfigVendor.mk
ANDROID_COMMON_BUILD_MK = true

# Kernel
BOARD_KERNEL_BASE := 0x48000000
BOARD_KERNEL_PAGE_SIZE := 2048
BOARD_KERNEL_CMDLINE := console=ttyHSL0 androidboot.hardware=z4u no_console_suspend=1
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

TARGET_KERNEL_SOURCE := kernel/htc/z4u
TARGET_KERNEL_CONFIG := cm-z4u_defconfig

TARGET_GLOBAL_CFLAGS += -mtune=cortex-a5 -mfpu=neon -mfloat-abi=softfp -DICS_CAMERA_BLOB
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a5 -mfpu=neon -mfloat-abi=softfp

# Bionic
TARGET_CORTEX_CACHE_LINE_32 := true
TARGET_USE_SPARROW_BIONIC_OPTIMIZATION := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := z4u
BOARD_KERNEL_BASE := 0x03b00000
BOARD_KERNEL_PAGESIZE := 2048

# Graphics
BOARD_EGL_CFG := device/htc/z4u/prebuilt/system/lib/egl/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
TARGET_QCOM_DISPLAY_VARIANT := legacy
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true

TARGET_SPECIFIC_HEADER_PATH := device/htc/z4u/include

# Qualcomm hardware
BOARD_USES_QCOM_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

# Wi-Fi
BOARD_WLAN_DEVICE := ath6kl
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_ath6kl
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_ath6kl
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

#Dalvik
TARGET_ARCH_LOWMEM := true

# Camera
BOARD_NEEDS_MEMORYHEAPPMEM := true
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB

# FM Radio
BOARD_HAVE_QCOM_FM := true
COMMON_GLOBAL_CFLAGS += -DQCOM_FM_ENABLED

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := z4u
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE :=  15499511
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15499511
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2013264896
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1342177280
BOARD_FLASH_BLOCK_SIZE := 131072

# Vold
BOARD_VOLD_MAX_PARTITIONS := 39

# RECOVERY
BOARD_HAS_SDCARD_INTERNAL := true
TARGET_RECOVERY_FSTAB := device/htc/z4u/recovery/recovery.fstab
BOARD_UMS_LUNFILE := "sys/class/android_usb/f_mass_storage/lun/file"
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true

#TARGET_PREBUILT_RECOVERY_KERNEL := device/htc/z4u/recovery/recovery_kernel
#TARGET_PREBUILT_KERNEL := device/htc/z4u/recovery/recovery_kernel

# FOR TWRP
#BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun0/file"
