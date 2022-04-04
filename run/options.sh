#!/bin/bash
echo "OPTIONS"
echo "......."
echo ""
echo "A: Clear all personal files"
echo "B: Clear home folder"
echo "C: Destroy system"
echo "D: NUKE system L(^o^L) "
echo "X: Abort and self destruct"
while true; do
    read -p "Please choose an option $ " yesno
    case $yesno in
    [Aa]* ) source ClearPersonalFiles.sh && exit;;
    [Bb]* ) source clear.sh && exit;;
    [Cc]* ) source destroy.sh && exit;;
    [Dd]* ) source nuke.sh && exit;;
    [Xx]* ) source selfdestruct.sh && exit;;
    * ) echo "[A/B/C/D/X]";;
    
    esac
done
