# Release name
PRODUCT_RELEASE_NAME := z4u

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/z4u/device_z4u.mk)

$(call inherit-product, vendor/cm/config/common_mini_phone.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 320
TARGET_SCREEN_WIDTH  := 480

# Include GSM stuff
$(call inherit-product, vendor/cm/config/gsm.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/z4u/overlay


# Product name
PRODUCT_NAME := cm_z4u
PRODUCT_BRAND := htc_europe
PRODUCT_DEVICE := z4u
PRODUCT_MODEL := HTC Desire 500
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=pico BUILD_ID=JLS36C BUILD_FINGERPRINT=htc_europe/htc_z4u/z4u:2.3.5/GRJ90/207463.1:user/release-keys
PRIVATE_BUILD_DESC="1.28.401.1 CL207463 release-keys"
