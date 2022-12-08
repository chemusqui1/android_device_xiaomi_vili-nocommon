DEVICE_PATH := device/xiaomi/vili
BOARD_VENDOR := xiaomi

BUILD_BROKEN_DUP_RULES := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-2a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a76
TARGET_CPU_VARIANT_RUNTIME := kryo385

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a76
TARGET_2ND_CPU_VARIANT_RUNTIME := kryo385

# AVB
BOARD_AVB_ENABLE := true

BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3

BOARD_AVB_VBMETA_SYSTEM := product system system_ext
BOARD_AVB_VBMETA_SYSTEM_ALGORITHM := SHA256_RSA2048
BOARD_AVB_VBMETA_SYSTEM_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX_LOCATION := 1

# A/B
AB_OTA_UPDATER := true

AB_OTA_PARTITIONS += \
    boot \
    dtbo \
    odm \
    product \
    system \
    system_ext \
    vbmeta \
    vbmeta_system \
    vendor \
    vendor_boot

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := vili
TARGET_NO_BOOTLOADER := true

# DTB
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_BOOT_HEADER_VERSION := 3
BOARD_MKBOOTIMG_ARGS := --header_version $(BOARD_BOOT_HEADER_VERSION)

# DTBO
BOARD_KERNEL_SEPARATED_DTBO := true

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/vintf/manifest.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/AHBF@2.1-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/android.hardware.atrace@1.0-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/android.hardware.boot@1.1.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/android.hardware.cas@1.2-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/android.hardware.dumpstate@1.1-service.xiaomi.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/android.hardware.gnss@2.1-service-qti.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/android.hardware.graphics.mapper-impl-qti-display.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/android.hardware.health@2.1.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/android.hardware.ir@1.0-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/android.hardware.lights-qti.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/android.hardware.neuralnetworks@1.3-service-qti.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/android.hardware.sensors@2.0-multihal.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/android.hardware.thermal@2.0-service.qti.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/android.hardware.usb@1.2-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/android.hardware.wifi.hostapd.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/android.hardware.wifi@1.0-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/c2_manifest_vendor.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/fod.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest_android.hardware.drm@1.3-service.clearkey.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest_android.hardware.drm@1.3-service.widevine.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest_vendor.dolby.hardware.dms.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest_vendor.xiaomi.hardware.cld.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest_vendor.xiaomi.hardware.mfidoca.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest_vendor.xiaomi.hardware.miface.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest_vendor.xiaomi.hardware.misecurity.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest_vendor.xiaomi.hardware.mlipay.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest_vendor.xiaomi.hardware.mtdservice.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest_vendor.xiaomi.hardware.tidaservice.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest_vendor.xiaomi.hardware.vsimapp.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/power.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/vendor.qti.diag.hal.service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/vendor.qti.gnss@4.0-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/vendor.qti.hardware.display.allocator-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/vendor.qti.hardware.display.composer-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/vendor.qti.hardware.servicetracker@1.2-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/vendor.qti.hardware.wifi.wificfr@1.0-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/vendor.xiaomi.cit.bluetooth@1.0_manifest.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/vendor.xiaomi.cit.wifi@1.0_manifest.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/vendor.xiaomi.hardware.citsensorservice@1.1-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/vendor.xiaomi.hardware.micharge@1.0.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/vendor.xiaomi.hardware.misys@1.0.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/vendor.xiaomi.hardware.misys@2.0.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/vendor.xiaomi.hardware.misys@3.0.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/vendor.xiaomi.hardware.vibratorfeature.service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/vendor.xiaomi.hw.touchfeature@1.0-service.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/vintf/compatibility_matrix.xml
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := $(DEVICE_PATH)/vintf/framework_compatibility_matrix.xml

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):init_vili
TARGET_RECOVERY_DEVICE_MODULES := init_vili

# Kernel
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET := 0x01000000

TARGET_KERNEL_ADDITIONAL_FLAGS := DTC_EXT=$(shell pwd)/prebuilts/misc/linux-x86/dtc/dtc LLVM=1
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_CONFIG := vili_defconfig
TARGET_KERNEL_SOURCE := kernel/xiaomi/vili
BOARD_KERNEL_CMDLINE += androidboot.console=ttyMSM0
BOARD_KERNEL_CMDLINE += androidboot.hardware=qcom
BOARD_KERNEL_CMDLINE += androidboot.memcg=1
BOARD_KERNEL_CMDLINE += androidboot.usbcontroller=a600000.dwc3
BOARD_KERNEL_CMDLINE += cgroup.memory=nokmem,nosocket
BOARD_KERNEL_CMDLINE += console=ttyMSM0,115200n8
BOARD_KERNEL_CMDLINE += loop.max_part=7
BOARD_KERNEL_CMDLINE += msm_rtb.filter=0x237
BOARD_KERNEL_CMDLINE += service_locator.enable=1
BOARD_KERNEL_CMDLINE += swiotlb=0
BOARD_KERNEL_CMDLINE += pcie_ports=compat
BOARD_KERNEL_CMDLINE += iptable_raw.raw_before_defrag=1
BOARD_KERNEL_CMDLINE += ip6table_raw.raw_before_defrag=1
BOARD_KERNEL_CMDLINE += video=vfb:640x400,bpp=32,memsize=3072000
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive

# Partitions
BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST := odm system system_ext vendor product
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 9122611200 # BOARD_SUPER_PARTITION_SIZE - 4MB
BOARD_SUPER_PARTITION_GROUPS := qti_dynamic_partitions
BOARD_SUPER_PARTITION_SIZE := 9126805504

BOARD_BOOTIMAGE_PARTITION_SIZE := 201326592
BOARD_DTBOIMG_PARTITION_SIZE := 25165824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 112421842944
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 100663296

ifeq ($(WITH_GMS),true)
BOARD_PRODUCTIMAGE_PARTITION_RESERVED_SIZE := 104857600
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 104857600
else
BOARD_PRODUCTIMAGE_EXTFS_INODE_COUNT := -1
BOARD_PRODUCTIMAGE_PARTITION_RESERVED_SIZE := 1887436800
BOARD_SYSTEMIMAGE_EXTFS_INODE_COUNT := -1
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 1887436800
endif
BOARD_SYSTEM_EXTIMAGE_PARTITION_RESERVED_SIZE := 104857600
BOARD_VENDORIMAGE_PARTITION_RESERVED_SIZE := 104857600

BOARD_ODMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

TARGET_COPY_OUT_ODM := odm
TARGET_COPY_OUT_SYSTEM_EXT := system_ext
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := product

BOARD_BUILD_SUPER_IMAGE_BY_DEFAULT := true

BOARD_USES_METADATA_PARTITION := true

BOARD_FLASH_BLOCK_SIZE := 131072

# Platform
TARGET_BOARD_PLATFORM := lahaina

# QCOM
BOARD_USES_QCOM_HARDWARE := true

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)

# Screen density
TARGET_SCREEN_DENSITY := 420

# Security patch level
VENDOR_SECURITY_PATCH := 2022-11-01

-include vendor/xiaomi/vili/BoardConfigVendor.mk
