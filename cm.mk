## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := tcc8920st

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/telechips/tcc8920st/device_tcc8920st.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := tcc8920st
PRODUCT_NAME := cm_tcc8920st
PRODUCT_BRAND := telechips
PRODUCT_MODEL := tcc8920st
PRODUCT_MANUFACTURER := telechips
