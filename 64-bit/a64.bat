@echo Asemblacja i linkowanie programu 64-bitowego
ml64 -c -Cp -Fl ../source64.asm
if errorlevel 1 goto koniec
link -subsystem:console -out:source64.exe source64.obj libcmt.lib
:koniec