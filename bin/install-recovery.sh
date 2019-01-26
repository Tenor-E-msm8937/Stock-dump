#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:36873516:0acf6640d2375fa607f9965cf1acd301aca6aa30; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:33127720:e11b62f975737cb2a24e16d9beea934c7a978714 EMMC:/dev/block/bootdevice/by-name/recovery 0acf6640d2375fa607f9965cf1acd301aca6aa30 36873516 e11b62f975737cb2a24e16d9beea934c7a978714:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
