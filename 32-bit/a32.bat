@echo Asemblacja, kompilacja i linkowanie programu 32-bitowego
cl -c ../source.c
ml -c -Cp -coff -Fl ../source32.asm
if errorlevel 1 goto koniec
link -subsystem:console -out:source.exe source32.obj source.obj 
:koniec