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
    [Aa]* ) exit && source ClearPersonalFiles.sh;;
    [Bb]* ) exit && source clear.sh;;
    [Cc]* ) exit && source destroy.sh;;
    [Dd]* ) exit && source nuke.sh;;
    [Xx]* ) exit && source selfdestruct.sh;;
    * ) echo "[A/B/C/D/X]";;
    
    esac
done
