#!/bin/bash

echo " #	│▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒│ "
echo " #	│                  Multi Installer                   │ "
echo " #	│   by     Muhammad Mustafa & Mohamed Hamza          │ "
echo " #	│      m.shico.o@gmail.com & M.hamza20@icloud.com    │ "
echo " #	│        install scripty with one piece of code      │ "
echo " #	│▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒│ "


title="Select script"
prompt="Pick an option:"
options=("ubuntu" "fedora")

echo "$title"
PS3="$prompt "
select opt in "${options[@]}" "Quit"; do 

    case "$REPLY" in

    1 ) echo "You selected $opt" && sudo sh./ubunutu.sh ;  break;;
    2 ) echo "you seleceted $opt" && sudo sh ./fedora.sh ;  break;;
    

    $(( ${#options[@]}+1 )) ) echo "Goodbye!"; break;;
    *) echo "Invalid option. Try another one.";continue;;

    esac

done
