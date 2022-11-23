@echo Asemblacja i linkowanie programu 32-bitowego
ml -c -Cp -coff -Fl ../source32.asm
if errorlevel 1 goto koniec
link -subsystem:console -out:source32.exe source32.obj libcmt.lib
:koniec