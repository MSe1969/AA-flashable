#!/sbin/sh

#
# Depending on the recovery, the /system partition may
# be mounted under /system/system - so we need to use this script
# to find out about that
#
if [ -d /system/system ]; then
  exit 0
else
  exit 1
fi
