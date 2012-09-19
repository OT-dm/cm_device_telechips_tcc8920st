$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/telechips/tcc8920st/tcc8920st-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/telechips/tcc8920st/overlay

LOCAL_PATH := device/telechips/tcc8920st
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

# Ramdisk
PRODUCT_COPY_FILES += \
    device/telechips/tcc8920st/ramdisk/init.tcc8920st.rc:root/init.tcc8920st.rc \
    device/telechips/tcc8920st/ramdisk/init.tcc8920st.usb.rc:root/init.tcc8920st.usb.rc \
    device/telechips/tcc8920st/ramdisk/init.tcc8920st.wifi.rc:root/init.tcc8920st.wifi.rc


PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    device/telechips/tcc8920st/lib/modules/tcc_mtd.ko:system/lib/modules/tcc_mtd.ko \
    device/telechips/tcc8920st/lib/modules/tcc_nand.ko:system/lib/modules/tcc_nand.ko \
    device/telechips/tcc8920st/lib/modules/tcc_ndd.ko:system/lib/modules/tcc_ndd.ko \
    device/telechips/tcc8920st/lib/modules/ufsd.ko:system/lib/modules/ufsd.ko

PRODUCT_COPY_FILES += \
    device/telechips/tcc8920st/lib/modules/tcc_mtd.ko:recovery/root/lib/modules/tcc_mtd.ko \
    device/telechips/tcc8920st/lib/modules/tcc_nand.ko:recovery/root/lib/modules/tcc_nand.ko \
    device/telechips/tcc8920st/lib/modules/tcc_ndd.ko:recovery/root/lib/modules/tcc_ndd.ko \
    device/telechips/tcc8920st/lib/modules/ufsd.ko:recovery/root/lib/modules/ufsd.ko \
    device/telechips/tcc8920st/recovery/recovery_starter.sh:recovery/root/sbin/recovery_starter.sh

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_tcc8920st
PRODUCT_DEVICE := tcc8920st
