#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:63fda560d634ecdfbcc71911264367b8099ac5b3; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:33554432:314c4e2fe33f7b38b432804196e5932fb1734a5d EMMC:/dev/block/bootdevice/by-name/recovery 63fda560d634ecdfbcc71911264367b8099ac5b3 67108864 314c4e2fe33f7b38b432804196e5932fb1734a5d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
