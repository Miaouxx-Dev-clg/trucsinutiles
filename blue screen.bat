@echo off
cls
:: Passe la console en mode plein ecran
mode con: cols=140 lines=40
:: Donne la couleur bleue avec le texte en blanc
color 17

echo.
echo  A problem has been detected and Windows has been shut down to prevent damage
echo  to your computer.
echo.
echo  MANUALLY_INITIATED_CRASH
echo.
echo  If this is the first time you've seen this Stop error screen,
echo  restart your computer. If this screen appears again, follow
echo  these steps:
echo.
echo  Check to make sure any new hardware or software is properly installed.
echo  If this is a new installation, ask your hardware or software manufacturer
echo  for any Windows updates you might need.
echo.
echo  Technical Information:
echo  *** STOP: 0x000000E2 (0x00000000, 0x00000000, 0x00000000, 0x00000000)
echo.
echo  Physical memory dump complete.
echo  Press any key to close this simulation...
pause >nul
