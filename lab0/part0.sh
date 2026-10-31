
#!/bin/bash
cd /workspaces/debian-4/lab0 || exit 1

# создание каталогов
mkdir -p eleon/victor/kitchen
mkdir -p eleon/victor/hall
mkdir -p eleon/hotel_office
mkdir -p eleon/reception
mkdir -p eleon/staff_room
mkdir -p eleon/roof

# заполнение файлов
cat > eleon/victor/kitchen/new_menu << 'EOF'
Блюдо от Виктора Баринова
Закуска от Екатерины Семёновой
Десерт для гостей отеля Eleon
Новое блюдо Дениса на проверке у шефа
EOF

cat > eleon/victor/kitchen/dinner_order << 'EOF'
На кухне подготовить утиную ножку
В зал отправить две рыбные закуски
Для Софии приготовить особый десерт
EOF

cat > eleon/victor/hall/opening_guests << 'EOF'
Элеонора Андреевна встречает первых гостей
София Яновна проверяет готовность зала
Виктор Баринов представляет новое меню
Костя помогает команде ресторана
EOF

cat > eleon/hotel_office/eleonora_order << 'EOF'
Ресторан Victor должен открыться вовремя
Баринов отвечает за кухню
София встречает важных гостей
Персонал отеля помогает в зале
EOF

cat > eleon/reception/sofia_schedule << 'EOF'
Утром проверить ресторан Victor
Днём провести встречу с Элеонорой
Вечером принять первых гостей
EOF

cat > eleon/reception/guest_notes << 'EOF'
Гости попросили столик рядом с окном
Один гость хочет поговорить с Бариновым
Постоянные гости ждут знакомое блюдо
EOF

cat > eleon/staff_room/barinov_uniform << 'EOF'
Новый китель приготовлен для шефа
На форме вышито имя Виктор
Китель находится в комнате персонала
EOF

cat > eleon/staff_room/kostya_message << 'EOF'
Костя приехал помочь перед открытием
Бар готов к вечернему обслуживанию
После смены он ждёт Настю в холле
EOF

cat > eleon/roof/max_letter << 'EOF'
Макс передал привет всей команде
Он помнит работу с Виктором Петровичем
Письмо оставлено на крыше отеля
EOF

cat > eleon/roof/roof_event << 'EOF'
Баринов поднялся на крышу после смены
Элеонора нашла его возле старого рояля
Команда ресторана собралась вместе
EOF

cat > opening_day << 'EOF'
Ресторан Victor открывается вечером
Баринов проверяет работу кухни
София встречает гостей в зале
EOF

# права доступа каталогов
chmod 755 eleon
chmod 750 eleon/victor
chmod 750 eleon/victor/kitchen
chmod 770 eleon/victor/hall
chmod 710 eleon/hotel_office
chmod u=rwx,g=rx,o=x eleon/reception
chmod 750 eleon/staff_room
chmod 750 eleon/roof

# права доступа файлов
chmod 644 eleon/victor/kitchen/new_menu
chmod 640 eleon/victor/kitchen/dinner_order
chmod 644 eleon/victor/hall/opening_guests
chmod 440 eleon/hotel_office/eleonora_order
chmod 640 eleon/reception/sofia_schedule
chmod 640 eleon/reception/guest_notes
chmod 600 eleon/staff_room/barinov_uniform
chmod 440 eleon/staff_room/kostya_message
chmod 640 eleon/roof/max_letter
chmod 440 eleon/roof/roof_event
chmod 644 opening_day
