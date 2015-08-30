# Release name
PRODUCT_RELEASE_NAME := bacon

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common tipsy stuff.
$(call inherit-product, vendor/tipsy/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/tipsy/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/oneplus/bacon/full_bacon.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := bacon
PRODUCT_NAME := tipsy_bacon
PRODUCT_BRAND := Oneplus
PRODUCT_MODEL := Oneplus One
PRODUCT_MANUFACTURER := Oneplus


TARGET_CONTINUOUS_SPLASH_ENABLED := true

# CameraNext
PRODUCT_COPY_FILES += \
	device/oneplus/bacon/prebuilt/CameraNextModV22.apk:system/app/CameraNextModV22.apk

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=oneplus/bacon/A0001:5.0.2/LRX22G/YNG1TAS2I3:user/release-keys \
    PRIVATE_BUILD_DESC="bacon-user 5.0.2 LRX22G YNG1TAS2I3 release-keys"
