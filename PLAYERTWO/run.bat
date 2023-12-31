:: =========================================================
:: Author: Amir Anwar
:: This is a batch file to compile and run x86 assembly code
:: =========================================================

:: Clean files
echo "=================================="
echo "Clean files"
DEL *.MAP
DEL *.OBJ
DEL *.EXE


:: Compile
echo "=================================="
echo "Compile"
TASM *.ASM

:: LINKING (IMPORTANT)
echo "=================================="
echo "Linking"

TLINK TRACK.OBJ


:: YOU HAVE TO SPECIFY THE FILES MANULAAY TILL NOW
:: YOU CAN'T SAY TLINK *.OBJ 
:: IF YOU FOUND ANOTHER WAY LET US KNOW

:: Run
TRACK.EXE

:: Clean files Silently you can remove this part
:: completely if you want it is not required
DEL *.MAP
DEL *.OBJ
DEL *.EXE
