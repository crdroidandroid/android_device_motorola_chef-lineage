# Inherit some common Lineage stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Crdroid
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_ENABLE_BLUR := true

# Device
$(call inherit-product, device/motorola/chef/device.mk)

# Device identifiers
BUILD_FINGERPRINT := motorola/chef_retail/chef_sprout:10/QPTS30.61-18-16-16/c8402:user/release-keys
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := chef
PRODUCT_MANUFACTURER := motorola
PRODUCT_MODEL := motorola one power
PRODUCT_NAME := lineage_chef

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=chef \
    PRIVATE_BUILD_DESC="chef_sprout-user 10 QPTS30.61-18-16-16 c8402 release-keys"
