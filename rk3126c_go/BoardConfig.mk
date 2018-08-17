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
include device/rockchip/rk3126c/BoardConfig.mk

# For Go device, set this Marco to true
BUILD_WITH_GO_OPT := true
#DEVICE_PACKAGE_OVERLAYS += $(TARGET_DEVICE_DIR)/overlay_1gb
PRODUCT_DEX_PREOPT_PROFILE_DIR := $(TARGET_DEVICE_DIR)/profiles

PRODUCT_DEX_PREOPT_GENERATE_DM_FILES := true
PRODUCT_DEX_PREOPT_DEFAULT_COMPILER_FILTER := verify
