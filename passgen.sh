#!/bin/bash

re='^[0-9]+$'

echo "welcome to PassGen"
echo "the og old school style password manager
"
clear
echo "000000000000000000000000000000000000000000"
echo "000000000000000000000000000000000000000000"
echo "000000000000000000000000000000000000000000"
echo "0000000000000                0000000000000"
echo "000000000000  /000000000000\  000000000000"
echo "00000000000  /00000000000000\  00000000000"
echo "0000000000  /0000000000000000\  0000000000"
echo "000000000  00000000000000000000  000000000"
echo "000000000  00000000000000000000  000000000"
echo "0000000                            0000000"
echo "0000000             000            0000000"
echo "0000000             0 0            0000000"
echo "0000000             000            0000000"
echo "0000000              0             0000000"
echo "0000000             00             0000000"
echo "0000000              0             0000000"
echo "0000000            000             0000000"
echo "0000000                            0000000"
echo "000000000000000000000000000000000000000000
"
PassGen() {
  read -p "how long should your password be: " Pass_len
  echo "do you want to add numbers and symboles"
  read -p "n for numbers 
s for symboles
ns for both: " num_syms
  if [ "$num_syms" -eq n ]; then
    cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w "$Pass_len" | head -n 1
  elif [ "$num_syms" -eq s ]; then
    cat /dev/urandom | base64 | tr -d '0-9' | fold -w "$Pass_len" | head -n 1
  elif [ "$num_syms" -eq ns ]; then
    cat /dev/urandom | base64 | fold -w "$Pass_len" | head -n 1
  else
    echo "pls try again"
    clear
  fi
}
while true; do
  PassGen
done
