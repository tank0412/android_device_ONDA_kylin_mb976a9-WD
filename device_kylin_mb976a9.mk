$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/ONDA/kylin_mb976a9/kylin_mb976a9.mk)

LOCAL_PATH := device/ONDA/kylin_mb976a9

#Prebuilt kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

#######
#$(call inherit-product, build/target/product/full.mk)
#######
$(call inherit-product, build/target/product/full_base.mk)
#######
#$(call inherit-product, build/target/product/full_base.mk)
#$(call inherit-product, build/target/board/generic/device.mk)
#include build/target/product/emulator.mk
#######

PRODUCT_AAPT_CONFIG := ldpi mdpi hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_CHARACTERISTICS := tablet

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_kylin_mb976a9
PRODUCT_DEVICE := kylin_mb976a9

#KylinCommon
DEVICE_PACKAGE_OVERLAYS := \
	$(LOCAL_PATH)/overlay
#	$(DEVICE_PACKAGE_OVERLAYS)

PRODUCT_PACKAGES += \
	com.android.future.usb.accessory \
	libnetcmdiface \
	Stk \
	static_busybox \
	make_ext4fs \
	setup_fs

# kylin-common
#PRODUCT_PACKAGES += \
#    	libion \
#    	sensors.kylin \
#    	lights.kylin \
#    	keystore.kylin \
#	hwcomposer.kylin

# file system
#PRODUCT_PACKAGES += \
#	setup_fs \
#	e2fsck \
#	libext2fs \
#	libext2_blkid \
#	libext2_uuid \
#	libext2_profile \
#	libext2_com_err \
#	libext2_e2p \
#	make_ext4fs

# usb
#PRODUCT_PACKAGES += \
#	com.android.future.usb.accessory

# audio
#PRODUCT_PACKAGES += \
#	audio.primary.kylin \
#	audio.a2dp.default \
#	audio.usb.default  \
#	audio.r_submix.default 
	
PRODUCT_COPY_FILES += \
	vendor/ONDA/kylin_mb976a9/system/etc/audio_policy.conf:system/etc/audio_policy.conf \
	vendor/ONDA/kylin_mb976a9/system/etc/phone_volume.conf:system/etc/phone_volume.conf

# camera
#PRODUCT_PACKAGES += \
#	camera.kylin \
#	libjni_eglfence_awgallery \
#	libjni_mosaic

# video
#PRODUCT_PACKAGES += \
#	libcedarxbase \
#	libcedarxosal \
#	libcedarv \
#	libcedarv_base \
#	libcedarv_adapter \
#	libve \
#	libaw_audio \
#	libaw_audioa \
#	libswdrm \
#	libfacedetection \
#	libsmileeyeblink \
#	libapperceivepeople \
#	libthirdpartstream \
#	libcedarxsftstream \
#	libion_alloc \
#	libsrec_jni \
#	libcnr \
#	libjpgenc \
#	libaw_venc \
#	libaw_h264enc \
#	libaw_vp8enc  \
#	libI420colorconvert \
#	libstagefrighthw \
#	libOmxCore \
#	libOmxVenc \
#	libOmxVdec

#PRODUCT_PACKAGES += \
#	com.google.widevine.software.drm.xml \
#	com.google.widevine.software.drm \
#	libdrmwvmplugin \
#	libwvm \
#	libWVStreamControlAPI_L3 \
#	libwvdrm_L3 \
#	libdrmdecrypt \
#	libwvdrmengine

PRODUCT_COPY_FILES += \
	device/ONDA/kylin_mb976a9/media_codecs.xml:system/etc/media_codecs.xml

# sensor - In the vendor folder
#PRODUCT_COPY_FILES += \
#    device/ONDA/kylin_mb976a9/sensors.sh:system/bin/sensors.sh


PRODUCT_PROPERTY_OVERRIDES += \
	ro.sys.cputype=UltraOcta-A80

#Recovery
#PRODUCT_COPY_FILES += \
#    vendor/ONDA/kylin_mb976a9/recovery/nand.ko:root/nand.ko \
#    vendor/ONDA/kylin_mb976a9/recovery/sw-device.ko:root/sw-device.ko \
#    vendor/ONDA/kylin_mb976a9/recovery/disp.ko:root/disp.ko \
#    vendor/ONDA/kylin_mb976a9/recovery/lcd.ko:root/lcd.ko \
#    vendor/ONDA/kylin_mb976a9/recovery/hdcp.ko:root/hdcp.ko \
#    vendor/ONDA/kylin_mb976a9/recovery/gt9xxnew_ts.ko:root/gt9xxnew_ts.ko

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/recovery/charger:root/charger \
	$(LOCAL_PATH)/recovery/fstab.sun9i:root/fstab.sun9i \
	$(LOCAL_PATH)/recovery/init.sun9i.rc:root/init.sun9i.rc \
	$(LOCAL_PATH)/recovery/init.recovery.sun9i.rc:root/init.recovery.sun9i.rc \
	$(LOCAL_PATH)/recovery/ueventd.sun9i.rc:root/ueventd.sun9i.rc \
	$(LOCAL_PATH)/recovery/init.sun9i.usb.rc:root/init.sun9i.usb.rc
	
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/recovery/init_partition.sh:root/sbin/init_partition.sh \
	$(LOCAL_PATH)/recovery/Extra/busybox:root/sbin/busybox

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/recovery/Extra/file_contexts:root/file_contexts

#PRODUCT_PACKAGES += \
#	com.android.future.usb.accessory

#Modules
PRODUCT_COPY_FILES += \
	vendor/ONDA/kylin_mb976a9/system/etc/permissions/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
	vendor/ONDA/kylin_mb976a9/system/etc/permissions/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
	vendor/ONDA/kylin_mb976a9/system/etc/permissions/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
	vendor/ONDA/kylin_mb976a9/system/etc/permissions/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	vendor/ONDA/kylin_mb976a9/system/etc/permissions/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
	vendor/ONDA/kylin_mb976a9/system/etc/permissions/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
	vendor/ONDA/kylin_mb976a9/system/etc/permissions/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
	vendor/ONDA/kylin_mb976a9/system/etc/permissions/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	vendor/ONDA/kylin_mb976a9/system/etc/permissions/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	vendor/ONDA/kylin_mb976a9/system/etc/permissions/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	vendor/ONDA/kylin_mb976a9/system/etc/permissions/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	vendor/ONDA/kylin_mb976a9/system/etc/permissions/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
	vendor/ONDA/kylin_mb976a9/system/etc/permissions/com.android.location.provider.xml:system/etc/permissions/com.android.location.provider.xml \
	vendor/ONDA/kylin_mb976a9/system/etc/permissions/com.android.media.remotedisplay.xml:system/etc/permissions/com.android.media.remotedisplay.xml \
	vendor/ONDA/kylin_mb976a9/system/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
	vendor/ONDA/kylin_mb976a9/system/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
	vendor/ONDA/kylin_mb976a9/system/etc/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml \
	vendor/ONDA/kylin_mb976a9/system/etc/permissions/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	vendor/ONDA/kylin_mb976a9/system/etc/permissions/platform.xml:system/etc/permissions/platform.xml \
	vendor/ONDA/kylin_mb976a9/system/etc/permissions/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml

#DO NOT DELETE!!!
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/initlogo.rle:root/initlogo.rle

#Overrides
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heapstartsize=16m \
    dalvik.vm.heapgrowthlimit=192m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=2m \
    dalvik.vm.heapmaxfree=8m \
    ro.zygote.disable_gl_preload=true

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb \
    ro.udisk.lable=ONDA_MID 

PRODUCT_PROPERTY_OVERRIDES += \
    ro.property.tabletUI=false \
    persist.sf.lcd_density=320 \
    ro.property.fontScale=1.0 \
    ro.sf.hwrotation=0

PRODUCT_PROPERTY_OVERRIDES += \
	ro.hwui.texture_cache_size=60 \
	ro.hwui.layer_cache_size=48 \
	ro.hwui.path_cache_size=12 \
	ro.hwui.shap_cache_size=3 \
	ro.hwui.drop_shadow_cache_size=6 \
	ro.hwui.r_buffer_cache_size=6

PRODUCT_PROPERTY_OVERRIDES += \
	ro.product.firmware=v0.1

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.timezone=Europe/Moscow \
    persist.sys.language=en \
    persist.sys.country=US \
    ro.product.locale.language=en \
    ro.product.locale.region=US

$(call inherit-product-if-exists, device/ONDA/kylin_mb976a9/modules/modules.mk)

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.adb.secure=0 \
    ro.secure=0

