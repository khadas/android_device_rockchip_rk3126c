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

# Use the non-open-source parts, if they're present
-include vendor/rockchip/common/BoardConfigVendor.mk

CURRENT_SDK_VERSION := RK3126C_ANDROID10.0_QT_V1.0

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
ENABLE_CPUSETS := true

TARGET_PREBUILT_KERNEL := kernel/arch/arm/boot/zImage
BOARD_PREBUILT_DTBIMAGE_DIR := kernel/arch/arm/boot/dts/
#PRODUCT_KERNEL_DTS ?= rk3126-bnd-m88-emmc
PRODUCT_KERNEL_DTS ?= rk3126-bnd-d708-avb
PRODUCT_KERNEL_ARCH ?= arm
SF_PRIMARY_DISPLAY_ORIENTATION := 0
PRODUCT_UBOOT_CONFIG ?= rk3126

IS_UPGRADE_TO_P := false

#BOARD_AVB_ENABLE := true

# Disable emulator for "make dist" until there is a 64-bit qemu kernel
BUILD_EMULATOR := false
TARGET_BOARD_PLATFORM := rk3126c
TARGET_BOARD_PLATFORM_GPU := mali400
BOARD_USE_DRM := true
GRAPHIC_MEMORY_PROVIDER := dma_buf
# RenderScript
# OVERRIDE_RS_DRIVER := libnvRSDriver.so
BOARD_OVERRIDE_RS_CPU_VARIANT_32 := cortex-a7
# DISABLE_RS_64_BIT_DRIVER := false

TARGET_USES_64_BIT_BCMDHD := false
TARGET_USES_64_BIT_BINDER := true
TARGET_PREFER_32_BIT := true

# Bluetooth feature
BOARD_BLUETOOTH_SUPPORT := true
BOARD_BLUETOOTH_LE_SUPPORT := false

# Sensors
BOARD_SENSOR_ST := true
BOARD_SENSOR_MPU_VR := false
BOARD_SENSOR_MPU_PAD := false

BOARD_USES_GENERIC_INVENSENSE := false

#Use HWC2
TARGET_USES_HWC2 := true

ifneq ($(filter %box, $(TARGET_PRODUCT)), )
TARGET_BOARD_PLATFORM_PRODUCT ?= box
else
 ifneq ($(filter %vr, $(TARGET_PRODUCT)), )
   TARGET_BOARD_PLATFORM_PRODUCT ?= vr
else
TARGET_BOARD_PLATFORM_PRODUCT ?= tablet
endif
endif

ENABLE_CPUSETS := true
# Enable dex-preoptimization to speed up first boot sequence
ifeq ($(HOST_OS),linux)
    ifeq ($(TARGET_BUILD_VARIANT),user)
        WITH_DEXPREOPT := true
    else
        WITH_DEXPREOPT := true
    endif
endif

BOARD_NFC_SUPPORT := false
BOARD_HAS_GPS := false

BOARD_GRAVITY_SENSOR_SUPPORT := true
BOARD_COMPASS_SENSOR_SUPPORT := false
BOARD_GYROSCOPE_SENSOR_SUPPORT := false
BOARD_PROXIMITY_SENSOR_SUPPORT := false
BOARD_LIGHT_SENSOR_SUPPORT := false
BOARD_PRESSURE_SENSOR_SUPPORT := false
BOARD_TEMPERATURE_SENSOR_SUPPORT := false
BOARD_USB_HOST_SUPPORT := true

#for optee support
PRODUCT_HAVE_OPTEE := true
BOARD_USE_SPARSE_SYSTEM_IMAGE := true

# Google Service and frp overlay
BUILD_WITH_GOOGLE_MARKET := true
BUILD_WITH_GOOGLE_GMS_EXPRESS := true
BUILD_WITH_GOOGLE_FRP := true

# Add widevine L3 support
BOARD_WIDEVINE_OEMCRYPTO_LEVEL := 3

# Set sepolcy enforcing
BOARD_SELINUX_ENFORCING := true

# camera enable
BOARD_CAMERA_SUPPORT := true

# Config omx to support codec type.
BOARD_SUPPORT_HEVC := false
BOARD_SUPPORT_VP9 := false
BOARD_SUPPORT_VP6 := false

# enable SVELTE malloc
MALLOC_SVELTE := true
