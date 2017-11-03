# Hw params
PRODUCT_COPY_FILES += \
	 $(LOCAL_PATH)/audio_para:system/etc/audio_para \
	 $(LOCAL_PATH)/codec_pga.xml:system/etc/codec_pga.xml\
	 $(LOCAL_PATH)/tiny_hw.xml:system/etc/tiny_hw.xml


# Media config
MEDIA_CONFIGS := \
	$(LOCAL_PATH)/media_codecs.xml \
	$(LOCAL_PATH)/media_profiles.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml

PRODUCT_COPY_FILES += \
$(foreach f,$(MEDIA_CONFIGS),$(f):system/etc/$(notdir $(f)))
