#!/bin/bash

#1) В качестве позционных аргументов принимаем ($1) колличество токенов, ($2) название токена, ($3) название токена назначения. done
#2) Проверяем, есть ли все 3 аргумента. done
#3) Делаем запрос к API и получаем цену за 1 введенный токен в долларах
#4) Рассчитываем стоимость введенного колличества актива в долларах
#5) Конвертируем стоимость введенного актива в актив назначения

if [[ ! -n $1 ]] & [[ ! -n $2 ]] & [[ ! -n $3 ]]
then
    echo "No arguments!"
    exit 1
fi

cost_of_one_input_token="$(curl -s  --location "api.coincap.io/v2/assets/$2" | jq ".data.priceUsd" | cut -c2-9)"
echo $cost_of_one_input_token
if [[ "$cost_of_one_input_token" -eq "ull" ]]
then
    echo "Entered cryptocurrency not found! Check if the input is correct..."
    exit 1
fi

cost_of_input_tokens=$(bc<<<"scale=3;$1*$cost_of_one_input_token")