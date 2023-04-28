#!/bin/bash

function verify_the_existence {
    if [[ "$1" == "ull" ]]
then
    echo "Entered cryptocurrency not found! Check if the input is correct..."
    exit 1
fi
}

function get_price {
    echo $(( '$(curl -s  --location "api.coincap.io/v2/assets/$1" | jq ".data.priceUsd" | cut -c2-9)' ))
}

if [[ ! -n $1 ]] && [[ ! -n $2 ]] && [[ ! -n $3 ]]
then
    echo "No arguments!"
    exit 1
fi

cost_of_one_input_token=$( get_price $2)
verify_the_existence $cost_of_one_input_token

cost_of_input_tokens=$(bc<<<"scale=3;$1*$cost_of_one_input_token")

cost_of_one_output_token="$(curl -s  --location "api.coincap.io/v2/assets/$3" | jq ".data.priceUsd" | cut -c2-9)"
