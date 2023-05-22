#!/bin/bash

chmod +x ../converter.sh

../converter.sh > /dev/null

if [[ $? -eq 1 ]]
then
    echo "В программу не переданы аргументы. Тест действительно должен завершиться с ошибкой. Тест пройден!"
    exit 0
else
    echo "В программу не переданы аргументы. Скрипт должен был завершиться с ощибкой..."
    exit 1
fi