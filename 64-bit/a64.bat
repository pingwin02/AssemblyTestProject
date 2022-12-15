@echo Asemblacja, kompilacja i linkowanie programu 64-bitowego
cl -c ../source.c
ml64 -c -Cp -Fl ../source64.asm
if errorlevel 1 goto koniec
link -subsystem:console -out:source.exe source64.obj source.obj
:koniec