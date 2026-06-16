@echo off
title Windows BSOD Simulation
cls

:: Ce petit bloc de code force la fenetre CMD a passer en plein ecran de maniere invisible
if not "%1"=="fullscreen" (
    powershell -NoProfile -Command "(New-Object -ComObject Shell.Application).MinimizeAll(); $h=(Get-Process -Id $PID).MainWindowHandle; $s=[wlan.api]::ShowWindow($h, 3)" 2>nul
    mode con: cols=160 lines=50
    :: Envoie la touche F11 de maniere automatique pour le vrai plein ecran
    powershell -NoProfile -Command "$wsh = New-Object -ComObject WScript.Shell; $wsh.SendKeys('{F11}')"
    goto start
)

:start
:: Fond bleu (1) et texte blanc (7)
color 17
cls

echo.
echo  A problem has been detected and Windows has been shut down to prevent damage
echo  to your computer.
echo.
echo  CRASH_SYSTEM_SIMULATION
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
echo.
echo  Pour quitter le faux bluescreen, appuie sur la touche F11 de ton clavier, puis ferme la fenetre.
echo.

:: Bloque l'affichage pour que l'utilisateur reste bloque sur l'ecran
pause >nul@echo off
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
