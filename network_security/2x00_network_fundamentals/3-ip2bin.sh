#!/bin/bash
if [ -n "$1" ]; then
    IFS='.' read -r o1 o2 o3 o4 <<< "$1"
    for octet in "$o1" "$o2" "$o3" "$o4"; do
        # Onluk tabandaki sayıyı bc kullanarak 2'lik tabana çeviriyoruz
        bin=$(echo "obase=2; $octet" | bc)
        # 8 bite tamamlamak için printf ile başına gerekirse sıfır ekliyoruz
        printf "%08d" "$bin"
        if [ "$octet" != "$o4" ]; then
            printf "."
        fi
    done
    printf "\n"
fi
