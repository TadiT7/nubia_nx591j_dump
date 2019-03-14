#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:15172908:12e6d74a4ffe10b99b9df578683fb3fdfebf4836; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:11722024:9fd761153e229afd2971cb4e12c16c32f1c206be EMMC:/dev/block/bootdevice/by-name/recovery 12e6d74a4ffe10b99b9df578683fb3fdfebf4836 15172908 9fd761153e229afd2971cb4e12c16c32f1c206be:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
