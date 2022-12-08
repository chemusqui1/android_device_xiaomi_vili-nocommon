# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from vili device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := vili
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_vili
PRODUCT_MODEL := Xiaomi 11T Pro
PRODUCT_SHIPPING_API_LEVEL := 30

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := vili
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="missi-user 12 SKQ1.211006.001 V13.0.21.0.SKDEUXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Xiaomi/vili/vili:12/RKQ1.211001.001/V13.0.21.0.SKDEUXM:user/release-keys
