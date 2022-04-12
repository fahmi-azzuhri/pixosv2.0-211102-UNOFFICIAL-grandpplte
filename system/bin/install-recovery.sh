#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery:11072812:02c0a853101e129c332aa189c208eb43cbf8f94e; then
  applypatch EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/boot:9475368:efcd013a8635ad19852798240942bbe687d7a4c2 EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery 02c0a853101e129c332aa189c208eb43cbf8f94e 11072812 efcd013a8635ad19852798240942bbe687d7a4c2:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
