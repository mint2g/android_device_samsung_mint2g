# enable Google-specific location features,
# like NetworkLocationProvider and LocationCollector
PRODUCT_PROPERTY_OVERRIDES += \
	ro.com.google.locationfeatures=1 \
	ro.com.google.networklocation=1

# Extended JNI checks
# The extended JNI checks will cause the system to run more slowly, but they can spot a variety of nasty bugs
# before they have a chance to cause problems.
# Default=true for development builds, set by android buildsystem.
PRODUCT_PROPERTY_OVERRIDES += \
	ro.kernel.android.checkjni=0 \
	dalvik.vm.checkjni=false \
	ro.ksm.default=1 \


# OpenGL
PRODUCT_PROPERTY_OVERRIDES += \
	ro.hwui.r_buffer_cache_size=1 \
	ro.hwui.layer_cache_size=8 \
	ro.hwui.path_cache_size=2 \
	ro.hwui.drop_shadow_cache_size=1 \
	ro.hwui.shape_cache_size=0.5 \
	ro.hwui.texture_cache_size=12 \
	ro.opengles.version=131072 \
	ro.zygote.disable_gl_preload=true

# adb 
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.service.adb.enable=1 \
	persist.sys.usb.config=adb,mtp \
	ro.adb.secure=0 \
	ro.secure=0 \
	ro.debuggable=1
	
# ART device props
PRODUCT_PROPERTY_OVERRIDES += \
	dalvik.vm.dex2oat-Xms=8m \
	dalvik.vm.dex2oat-Xmx=96m \
	dalvik.vm.dex2oat-flags=--no-watch-dog \
	dalvik.vm.dex2oat-filter=interpret-only \
	dalvik.vm.image-dex2oat-Xms=48m \
	dalvik.vm.image-dex2oat-Xmx=48m \
	dalvik.vm.image-dex2oat-filter=speed \
	dalvik.vm.isa.arm.features=-smp,-div,-atomic_ldrd_strd

# Low ram optimization
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.low_ram=true

# Force use old camera api
PRODUCT_PROPERTY_OVERRIDES += \
	camera2.portability.force_api=1

# WIFI
PRODUCT_PROPERTY_OVERRIDES += \
	wifi.supplicant_scan_interval=180 \
	wifi.interface=wlan0

# SIM/Modem
PRODUCT_PROPERTY_OVERRIDES := \
    keyguard.no_require_sim=true \
    ro.com.android.dataroaming=false \
    persist.sys.sprd.modemreset=0 \
    ro.telephony.ril_class=SamsungMint2GRIL \
	ro.telephony.call_ring=0 \
	persist.msms.phone_count=2 \
	persist.radio.multisim.config=dsds \
	ro.telephony.call_ring.multiple=0