#!/sbin/sh

#
# Depending on the recovery (e.g. TWRP 3.6.x on some devices),
# the /system_root partition may be used, even if the property
# is not present - so we need to use this script
# to find out about that
#
system_as_root=`getprop ro.build.system_root_image`
if [ "$system_as_root" == "true" ] || [ -d "/system_root" ]; then
  exit 0
else
  exit 1
fi
