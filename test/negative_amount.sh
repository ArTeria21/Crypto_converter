#!/bin/bash

chmod +x ../converter.sh

../converter.sh -5 Polygon Bitcoin > /dev/null

if [[ $?  -eq 1 ]]
then
    echo "Передано отрицательное количество валюты. Программа завершилась с ошибкой. Тест пройден!"
    exit 0
else
    echo "Передано отрицательное количество валюты. Программа не завершилась с ошибкой! Тест провален..."
    exit 1
fi