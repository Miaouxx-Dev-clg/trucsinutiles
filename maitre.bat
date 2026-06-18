@echo off
title NovaDev85 - Initialisation
mode con: cols=120 lines=50
color 0a
cls

:: Lecture du fichier avec une pause plus longue pour l'effet "machine à écrire"
:: On passe à 50 millisecondes au lieu de 10
powershell -Command "Get-Content 'le grand dieu.txt' -ReadCount 1 | ForEach-Object { $_ ; Start-Sleep -Milliseconds 50 }"

:: Ajout de la signature
echo.
echo.
echo ========================================================================
echo [SYSTEME] Chargement termine.
echo [SIGNATURE] MiaouxxLab respect eternel a mes amis NovaDev85 et NovaDev87
echo ========================================================================
echo.
pause
