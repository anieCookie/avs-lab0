# файл
cp eleon/hotel_office/eleonora_order eleon/victor/hall/owner_order

# каталог
cp -r eleon/roof eleon/victor/roof_archive

# создание относительной символической ссылки
ln -s ../victor/kitchen/new_menu eleon/staff_room/current_menu

# ссылка на каталог
ln -s eleon/reception hotel_reception

# жесткая ссылка
ln opening_day eleon/victor/hall/opening_log

# объединение 
cat eleon/victor/hall/opening_guests eleon/reception/guest_notes > eleon/reception/all_guests

# дописывание сообщения 
cat eleon/staff_room/kostya_message >> opening_day

# перемещение
mv eleon/roof/max_letter eleon/hotel_office/max_message

git add .
git commit -m "Complete file operations and links"
git push