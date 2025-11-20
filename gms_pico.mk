#
# Copyright (C) 2018-2019 The Google Pixel3ROM Project
# Copyright (C) 2024 The hentaiOS Project and its Proprietors
#
# Licensed under the Apache License, Version 2.0 (the License);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an AS IS BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#

# Quick Tap
TARGET_SUPPORTS_QUICK_TAP ?= true
ifeq ($(TARGET_SUPPORTS_QUICK_TAP),true)
PRODUCT_PACKAGES += \
    quick_tap
endif

# product/app
PRODUCT_PACKAGES += \
    GoogleTTS \
    LatinIMEGooglePrebuilt \
    LocationHistoryPrebuilt \
    MarkupGoogle \
    PixelThemesStub2025_and_newer \
    SoundPickerPrebuilt \
    TrichromeLibrary \
    TrichromeLibrary-Stub \
    WebViewGoogle \
    WebViewGoogle-Stub \
    talkback

# product/priv-app
PRODUCT_PACKAGES += \
    AndroidAutoStubPrebuilt \
    ConfigUpdater \
    CreativeAssistant \
    DevicePersonalizationPrebuiltPixel2020 \
    GoogleOneTimeInitializer \
    GoogleRestorePrebuilt \
    OdadPrebuilt \
    PartnerSetupPrebuilt \
    Phonesky \
    PrebuiltDeskClockGoogle \
    PrebuiltPixelCoreServices \
    SettingsIntelligenceGooglePrebuilt \
    SetupWizardPrebuilt \
    TurboPrebuilt

TARGET_SUPPORTS_GOOGLE_TELEPHONY ?= true
ifeq ($(TARGET_SUPPORTS_GOOGLE_TELEPHONY),true)
PRODUCT_PACKAGES += \
    GoogleContacts \
    GoogleDialer \
    PrebuiltBugle
endif

TARGET_INCLUDE_PHOTOS ?= false
ifeq ($(TARGET_INCLUDE_PHOTOS),true)
PRODUCT_PACKAGES += \
    Photos
endif

TARGET_INCLUDE_WEATHER ?= false
ifeq ($(TARGET_INCLUDE_WEATHER),true)
PRODUCT_PACKAGES += \
    WeatherPixelPrebuilt
endif

TARGET_SUPPORTS_GOOGLE_FILES ?= false
ifeq ($(TARGET_SUPPORTS_GOOGLE_FILES),true)
PRODUCT_PACKAGES += \
    DocumentsUIGoogle \
    FilesPrebuilt 
endif

TARGET_SUPPORTS_GOOGLE_RECORDER ?= false
ifeq ($(TARGET_SUPPORTS_GOOGLE_RECORDER),true)
PRODUCT_PACKAGES += \
    RecorderPrebuilt
endif


ifneq ($(filter sailfish marlin walleye taimen blueline crosshatch sargo bonito flame coral sunfish bramble redfin barbet oriole raven bluejay panther cheetah lynx tangorpro felix shiba husky akita tokay caiman komodo comet tegu frankel blazer mustang, $(LINEAGE_BUILD)),)
PRODUCT_PACKAGES += \
    SCONE
endif

ifneq ($(filter flame coral redfin oriole raven panther cheetah lynx felix shiba husky akita tokay caiman komodo tegu frankel blazer mustang, $(LINEAGE_BUILD)),)
PRODUCT_PACKAGES += \
    DreamlinerDreamsPrebuilt \
    DreamlinerPrebuilt \
    DreamlinerUpdater
endif

ifneq ($(filter husky akita tokay caiman komodo frankel blazer mustang, $(LINEAGE_BUILD)),)
PRODUCT_PACKAGES += \
    HealthIntelligencePrebuilt
endif

# system/app
PRODUCT_PACKAGES += \
    GoogleExtShared \
    GooglePrintRecommendationService

# system_ext/app
PRODUCT_PACKAGES += \
    EmergencyInfoGoogleNoUi \
    Flipendo

# system_ext/priv-app
PRODUCT_PACKAGES += \
    AvatarPickerGoogle \
    GoogleFeedback \
    GoogleServicesFramework \
    MoseyApp \
    NexusLauncherRelease \
    SetupWizardPixelPrebuilt \
    QuickAccessWallet \
    WallpaperPickerGoogleRelease

# PrebuiltGmsCore
PRODUCT_PACKAGES += \
    PrebuiltGmsCoreVic \
    PrebuiltGmsCoreVic_AdsDynamite \
    PrebuiltGmsCoreVic_CronetDynamite \
    PrebuiltGmsCoreVic_DynamiteLoader \
    PrebuiltGmsCoreVic_DynamiteModulesA \
    PrebuiltGmsCoreVic_DynamiteModulesC \
    PrebuiltGmsCoreVic_GoogleCertificates \
    PrebuiltGmsCoreVic_MapsDynamite \
    PrebuiltGmsCoreVic_MeasurementDynamite \
    AndroidPlatformServices \
    MlkitBarcodeUIPrebuilt \
    TfliteDynamitePrebuilt \
    VisionBarcodePrebuilt

# Safety Information
#PRODUCT_PACKAGES += \
#    SafetyRegulatoryInfo

$(call inherit-product, vendor/gms/product/blobs/product_blobs.mk)
$(call inherit-product, vendor/gms/system/blobs/system_blobs.mk)
$(call inherit-product, vendor/gms/system_ext/blobs/system-ext_blobs.mk)
