# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)

# Inherit from TWRP product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Device specific configs
$(call inherit-product, device/OPPO/OP5245/device.mk)

# Device identifier
PRODUCT_DEVICE := OP5245
PRODUCT_NAME := twrp_rubens
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := PEYM00
PRODUCT_MANUFACTURER := OPPO
PRODUCT_PROPERTY_OVERRIDES += ro.twrp.vendor_boot=true