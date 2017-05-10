#!/bin/bash
# Bash Menu Script Example
set -x
clear
echo "Kali fresh install?"
PS3='Please enter your choice: '
options=("Yes" "No" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Yes")
            repo
            ;;
        "No")
            
            ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done

repo()
{echo "deb http://http.kali.org/kali kali-rolling main contrib non-free' >> /etc/apt/sources.list"
apt-get clean
apt-get update
apt-get dist-upgrade
apt-get dist-upgrade
}