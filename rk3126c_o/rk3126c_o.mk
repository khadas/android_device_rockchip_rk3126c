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
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
include device/rockchip/rk3126c/rk3126c_o/BoardConfig.mk
$(call inherit-product, device/rockchip/rk3126c/device-common.mk)
$(call inherit-product, device/rockchip/common/device.mk)

# setup dalvik vm configs for normal device.
$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_NAME := rk3126c_o
PRODUCT_DEVICE := rk3126c_o
PRODUCT_BRAND := rockchip
PRODUCT_MODEL := rk3126c_o
PRODUCT_MANUFACTURER := rockchip
