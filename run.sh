#!/bin/bash
echo "DELETE EVERYTHING"
echo ".................."
while true; do
    read -p "Do you wish to continue? ANSWERING NO WILL ABORT AND SELF DESTRUCT $ " yesno
    case $yesno in
    [Yy]* ) source options.sh && exit;;
    [Nn]* ) exit && source run/selfdestruct.sh;;
    * ) echo "[Y/n]";;
    
    esac
done
