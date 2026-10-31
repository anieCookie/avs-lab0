#!/bin/bash
cd /workspaces/debian-4/lab0 || exit 1

# удаление файлов и ссылок
rm -f eleon/hotel_office/eleonora_order
rm -f eleon/staff_room/current_menu
rm -f hotel_reception
rm -f opening_day
rm -f eleon/victor/hall/opening_log
rm -f eleon/roof/roof_event

# удаление каталога
rmdir eleon/roof

# удаление архива
rm -r eleon/victor/roof_archive


git add .
git commit -m "Remove files and directories"
git push