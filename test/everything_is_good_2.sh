#!/bin/bash

chmod +x ../converter.sh

../converter.sh 99929801 kava flow > /dev/null

if [[ $?  -eq 0 ]]
then
    echo "Программа получила стоимость валют и завершилась без ошибок. Тест пройден!"
    exit 0
else
    echo "Программа завершилась с ошибкой, хотя аргументы корректны... Тест провален..."
    exit 1
fi