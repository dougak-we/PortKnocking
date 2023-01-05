!/bin/bash
dst=("13" "37" "30000" "3000" "1337")
rede="37.59.174"
for ip in {1..254}; do
    for i in {0..3}; do
        hping3  -p ${dst[$i]} -c 1 $rede.$ip 2>&-;
    done
    nc -w2 -vC $rede.$ip 1337 2>&- && clear;
