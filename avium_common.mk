# AVIUM_VERSION_APPEND_TIME_OF_DAY is a boolean flag to indicate
# whether to append time of day to the build date.
AVIUM_VERSION_APPEND_TIME_OF_DAY ?= false
# Maintainer
# AVIUM_MAINTAINER is a string that represents the maintainer of the build.
AVIUM_MAINTAINER ?= 觉得不能

# Settings
# Soc model name
AVIUM_SETTINGS_SOC_MODEL_NAME ?= 骁龙8gen2
# Device code name
AVIUM_SETTINGS_DEVICE_CODENAME ?= Redmi K60 Pro

# GMS
# WITH_GMS is a boolean flag to indicate 
# whether to include Google Mobile Services (GMS) in the build.
WITH_GMS ?= true
# Google Sans
# Enable this to set default fonts to Google Sans.
# This also works when building vanilla, but you
# need to sync vendor/pixel/gsans repo.
TARGET_USES_GSANS := true
# LatinIMEGooglePrebuilt
# Only works on vanilla builds,
# GMS builds will use the Google IME from GMS.
TARGET_INCLUDE_GOOGLEIME ?= true
TARGET_GOOGLEIME_OVERRIDE_IME ?= true

# Spoof Props
# Set to true to enable spoofing fake props.
# For letting apps think they are running on a locked device.
AVIUM_FORCE_SET_FAKE_PROP ?= true

# Blur Effect
# The blur usually enabled on Android 16 QPR2.
# If the blur not enabled, set to true to force enable blur for SystemUI.
TARGET_FORCE_ENABLE_BLUR ?= true
