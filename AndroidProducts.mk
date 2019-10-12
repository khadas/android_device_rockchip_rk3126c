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

PRODUCT_MAKEFILES := \
        $(LOCAL_DIR)/rk3126c_go/rk3126c_go.mk \
        $(LOCAL_DIR)/rk3126c_o/rk3126c_o.mk \
        $(LOCAL_DIR)/rk3126c_qt/rk3126c_qt.mk

COMMON_LUNCH_CHOICES := \
	rk3126c_go-userdebug \
	rk3126c_go-user \
	rk3126c_o-userdebug \
	rk3126c_o-user \
	rk3126c_qt-userdebug \
	rk3126c_qt-user
