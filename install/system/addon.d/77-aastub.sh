#!/sbin/sh
#
# ADDOND_VERSION=2
#

. /tmp/backuptool.functions

list_files() {
cat <<EOF
app/Google_Stub/Google_Stub.apk
etc/default-permissions/default-permissions.xml
etc/permissions/privapp-permissions-com.google.android.projection.gearhead.xml
priv-app/AndroidAuto/AndroidAuto.apk
EOF
}

case "$1" in
  backup)
    list_files | while read FILE DUMMY; do
      backup_file $S/"$FILE"
    done
  ;;
  restore)
    list_files | while read FILE REPLACEMENT; do
      R=""
      [ -n "$REPLACEMENT" ] && R="$S/$REPLACEMENT"
      restore_file $S/"$FILE" "$R"
    done
  ;;
  pre-backup)
    # Stub
  ;;
  post-backup)
    # Stub
  ;;
  pre-restore)
    # Stub
  ;;
  post-restore)
    # Stub
  ;;
esac
