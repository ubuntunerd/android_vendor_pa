# Check for target product
ifeq (pa_toro,$(TARGET_PRODUCT))

# Define PA bootanimation size
PARANOID_BOOTANIMATION_NAME := XHDPI

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_tuna

# include ParanoidAndroid common configuration
include vendor/pa/config/pa_common.mk

# include missing proprietaries
PRODUCT_COPY_FILES += \
  vendor/pa/proprietary/toro/bcm4330.hcd:system/vendor/firmware/bcm4330.hcd

# Inherit CM9 device configuration
$(call inherit-product, device/samsung/toro/cm.mk)

PRODUCT_NAME := pa_toro

GET_VENDOR_PROPS := $(shell vendor/pa/tools/getvendorprops.py $(PRODUCT_NAME))

endif

