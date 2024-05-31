#!/bin/bash

# Array of hex colors
colors=("202020" "bf3f34" "707d22" "bf7a29" "627a92" "75507b" "757978" "b2a191" "404040" "ff6c5f" "b8ca4b" "c7a551" "95b9de" "ad7fa8" "9fa590" "e8d0c3")

for hex in "${colors[@]}"; do
    # Convert hex to RGB
    r=$(echo $hex | cut -c1-2)
    g=$(echo $hex | cut -c3-4)
    b=$(echo $hex | cut -c5-6)

    # Convert hex to decimal
    r_dec=$((16#$r))
    g_dec=$((16#$g))
    b_dec=$((16#$b))

    # Print color block
    printf "\e[48;2;%d;%d;%dm    \e[0m %s\n" $r_dec $g_dec $b_dec "#$hex"
done