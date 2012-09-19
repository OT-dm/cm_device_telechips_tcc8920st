USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/telechips/tcc8920st/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi
TARGET_BOOTLOADER_BOARD_NAME := tcc8920st

BOARD_KERNEL_CMDLINE := console=null
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 8192

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x12c00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/telechips/tcc8920st/kernel

BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true

# Recovery
#BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/telechips/tcc8920st/recovery/recovery_keys.c
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
#BOARD_TOUCH_RECOVERY := true
BOARD_HAS_LARGE_FILESYSTEM := false
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_INITRC := device/telechips/tcc8920st/recovery/init.recovery.rc