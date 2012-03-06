# Inherit AOSP device configuration for supersonic.
$(call inherit-product, device/htc/supersonic/full_supersonic.mk)

# Inherit some common classic stuff.
$(call inherit-product, vendor/cn/config/common_full_phone.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := classic_supersonic
PRODUCT_BRAND := sprint
PRODUCT_DEVICE := supersonic
PRODUCT_MODEL := PC36100
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_supersonic BUILD_FINGERPRINT=sprint/htc_supersonic/supersonic:2.3.3/GRI40/61076:user/release-keys PRIVATE_BUILD_DESC="4.24.651.1 CL61076 release-keys"

# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME := Acies
PRODUCT_VERSION_DEVICE_SPECIFIC := p9

PRODUCT_MOTD :="\n\n\nThank you for choosing Classic Supersonic\nGet the latest rom at ics.classictomatoe.net - enjoy the possibilities\n"

PRODUCT_PACKAGES += \
    Camera

# Hot reboot
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/cn/overlay/hot_reboot

# Copy compatible prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/cn/prebuilt/wvga/media/bootanimation.zip:system/media/bootanimation.zip
