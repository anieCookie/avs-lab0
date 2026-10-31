#!/bin/bash
cd /workspaces/debian-4/lab0 || exit 1


# топ6 самых больших обычных файлов
ls -lR eleon | grep '^-' | sort -k5,5nr | head -n 6

# строки с Бариновым или Софией
grep -rihE 'баринов|софия' eleon | grep -iv 'гост' | sort | head -n 5

# кол-во файлов с "гост"
grep -il 'гост' eleon/victor/hall/* eleon/reception/* | wc -l

# перавя и послед строки файлов reception
{ head -q -n 1 eleon/reception/*; tail -q -n 1 eleon/reception/*; } | grep -iE 'гост|соф' | sort -r

# фильтрация all_guests и подсчет слов
grep -iv 'столик' eleon/reception/all_guests | sort -r | head -n 4 | wc -w

# файлы с двумя жесткими ссылками
ls -lR . | grep '^-.* 2 ' | sort -k9

# кол-во файлов с Бариновым или Максом в roof_archive
grep -rilE 'баринов|макс' eleon/victor/roof_archive | wc -l