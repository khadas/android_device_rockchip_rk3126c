#
# Copyright 2014 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# First lunching is Q, api_level is 29
PRODUCT_SHIPPING_API_LEVEL := 29
PRODUCT_DTBO_TEMPLATE := $(LOCAL_PATH)/dt-overlay.in
PRODUCT_BOOT_DEVICE := 10500000.nandc,1021c000.dwmmc
include device/rockchip/common/build/rockchip/DynamicPartitions.mk
include device/rockchip/common/BoardConfig.mk
include device/rockchip/rk3126c/rk3126c_qgo/BoardConfig.mk
$(call inherit-product, device/rockchip/rk3126c/device-common.mk)
$(call inherit-product, device/rockchip/common/device.mk)

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_NAME := rk3126c_qgo
PRODUCT_DEVICE := rk3126c_qgo
PRODUCT_BRAND := rockchip
PRODUCT_MODEL := rk3126c_qgo
PRODUCT_MANUFACTURER := rockchip
# Get the long list of APNs
PRODUCT_COPY_FILES += vendor/rockchip/common/phone/etc/apns-full-conf.xml:system/etc/apns-conf.xml
PRODUCT_COPY_FILES += vendor/rockchip/common/phone/etc/spn-conf.xml:system/etc/spn-conf.xml
PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.version = 1.0.0 \
    ro.product.ota.host = www.rockchip.com:2300 \
    ro.sf.lcd_density=280

#PRODUCT_HAVE_OPTEE := true

# Enable DM file preopting to reduce first boot time
PRODUCT_DEX_PREOPT_GENERATE_DM_FILES := true
PRODUCT_DEX_PREOPT_DEFAULT_COMPILER_FILTER := verify

# Save space for Go-device
DONT_UNCOMPRESS_PRIV_APPS_DEXS := true

# Reduces GC frequency of foreground apps by 50%
PRODUCT_PROPERTY_OVERRIDES += dalvik.vm.foreground-heap-growth-multiplier=2.0
# set zygote
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.zygote=zygote32
