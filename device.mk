#
# Copyright (C) 2015 Schischu
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

$(call inherit-product, device/samsung/chagall-klimt-common/device.mk)

PRODUCT_COPY_FILES += \
    device/samsung/klimtwifi/audio/mixer_paths.xml:system/etc/mixer_paths.xml

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml

DEVICE_PACKAGE_OVERLAYS += \
    device/samsung/klimtwifi/overlay

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    ro.carrier=wifi-only \
# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    ro.radio.noril=yes

# setup dalvik vm configs.
$(call inherit-product, frameworks/native/build/tablet-7in-xhdpi-2048-dalvik-heap.mk)
$(call inherit-product, vendor/samsung/klimtwifi/klimtwifi-vendor.mk)
