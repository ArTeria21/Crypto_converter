#!/bin/bash

#This function checks if the cryptocurrency exists
function verify_the_existence {
    if [[ "$1" == "ull" ]]
then
    echo "Entered cryptocurrency not found! Check if the input is correct..."
    exit 1
fi
}

#This function gets price of one token from coincup API
function get_price {
    echo $(curl -s  --location "api.coincap.io/v2/assets/$1" | jq ".data.priceUsd" | cut -c2-9)
}

#checking for arguments
if [[ ! -n $1 ]] && [[ ! -n $2 ]] && [[ ! -n $3 ]]
then
    echo "No arguments!"
    exit 1
fi

#checking for positive ($1 > 0) argument
if [[ ! 1 -eq "$(echo "$1>0" | bc)" ]]
then
    echo "You entered a negative or zero amount of tokens! Check the arguments!"
    exit 1
fi

#get the price of the entered token and check its existence
cost_of_one_input_token=$( get_price $2)
verify_the_existence $cost_of_one_input_token

#calculate the value of all entered tokens
cost_of_input_tokens=$(bc<<<"scale=3;$1*$cost_of_one_input_token")

#get the price of the output token and check its existence
cost_of_one_output_token=$( get_price $3)
verify_the_existence $cost_of_one_output_token

#convert tokens
converted=$(bc<<<"scale=3;$cost_of_input_tokens/$cost_of_one_output_token")

echo "Conversion result:"
echo "$1 $2 tokens equals $converted $3 tokens"