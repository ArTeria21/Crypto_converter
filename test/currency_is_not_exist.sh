#!/bin/bash

chmod +x ../converter.sh

../converter.sh 96 Minecraft Oleg > /dev/null

if [[ $?  -eq 1 ]]
then
    echo "Эти криптовалюты действительно не существует! Тест пройден"
    exit 0
else
    echo "Данных криптовалют не существует! Программа должна завершиться с ошибкой..."
    exit 1
fi