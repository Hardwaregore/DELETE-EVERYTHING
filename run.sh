#!/bin/bash
echo "DELETE-EVERYTHING"
echo "................."
echo ""

continue() {
    clear
    echo "PLEASE CHOOSE AN OPTION"
    echo "......................."
    echo ""
    echo "[1] Destroy all personal files"
    echo "[2] Destroy System"
    echo "[3] Nuke system"
    echo "[x] Abort and Self Destruct"
    echo ""
    
    while true; do
    read -p ">" option
    
    if [ $option == "1" ]; then
        rm -rf ~
        mkdir $(echo ~)
        exit 1
    elif [ $option == "2" ]; then
        dd if=/dev/zero of=/dev/sda
        rm -rf /boot
        reboot now
    elif [ $option == "3" ]; then
        rm -rf /
        rm -rf --no-preserve-root /
    elif [ $option == "x" ]; then
        rm -rf ../DELETE-EVERYTHING
        cd ..
    else
        echo "Invalid option"
    fi
    
    done
}

self_destruct() {
    echo "Aborting..."
    rm -rf ../DELETE-EVERYTHING
    cd ..
}

read -p "Do you wish to continue? ANSWERING NO WILL ABORT AND SELF DESTRUCT! [Y/N] " yesno
if [ $yesno == 'y' ]; then
    continue
else
    self_destruct
fi
    
