DEVICE_PATH := device/OPPO/OP5245

# API
PRODUCT_SHIPPING_API_LEVEL := 30 # ro.board.first_api_level

# A/B
AB_OTA_UPDATER := flase # 启用A/B无缝更新
AB_OTA_PARTITIONS += \ # 定义A/B分区，参考fstab
    boot \
    dtbo \
    system \
    product \
    vendor \
    odm \
    odm_dlkm \
    vbmeta \
    vendor_boot \
    vendor_dlkm \
    vbmeta_system \
    vbmeta_vendor

PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier \
    checkpoint_gc

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/mtk_plpath_utils \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_vendor=true \
    POSTINSTALL_PATH_vendor=bin/checkpoint_gc \
    FILESYSTEM_TYPE_vendor=ext4 \
    POSTINSTALL_OPTIONAL_vendor=true

# Dynamic
PRODUCT_USE_DYNAMIC_PARTITIONS := true # 动态分区

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH) # 命名空间