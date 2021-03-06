# Inherit AICP common_tablet bits
$(call inherit-product, vendor/aicp/configs/common_tablet.mk)

# Inherit device configuration
$(call inherit-product, device/asus/flo/full_flo.mk)

# Flo Overlay
#PRODUCT_PACKAGE_OVERLAYS += vendor/aicp/overlay/flo

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := flo
PRODUCT_NAME := aicp_flo
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=razor BUILD_FINGERPRINT=google/razor/flo:5.0.2/LRX22G/1649326:user/release-keys PRIVATE_BUILD_DESC="razor-user 5.0.2 LRX22G 1649326 release-keys"

# Boot animation
TARGET_SCREEN_HEIGHT := 1920_flo
TARGET_SCREEN_WIDTH := 1200
-include vendor/aicp/configs/bootanimation.mk
