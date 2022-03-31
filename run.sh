#!/bin/bash
echo "DELETE EVERYTHING"
echo ".................."
while true; do
    read -p "Do you wish to continue? ANSWERING NO WILL ABORT AND SELF DESTRUCT $ " yesno
    case $yesno in
    [Yy]* ) cd run && source options.sh && exit;;
    [Nn]* ) cd run && source selfdestruct.sh && exit;;
    * ) echo "[Y/n]";;
    
    esac
done
