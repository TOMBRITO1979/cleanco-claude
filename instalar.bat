@echo off
title Instalador CleanCo - Claude Code + Plugin
echo.
echo  ==========================================================
echo   Instalador: Claude Code + plugin CleanCo (agentes/skills)
echo  ==========================================================
echo.
echo  Este instalador vai:
echo   1. Instalar o Claude Code (se ainda nao estiver instalado)
echo   2. Adicionar o marketplace CleanCo do GitHub
echo   3. Instalar o plugin com os agentes e skills
echo.
echo  Pressione qualquer tecla para comecar ou feche esta janela para cancelar.
pause >nul

REM Troque SEU-USUARIO/SEU-REPO pelo caminho do seu repositorio no GitHub
set REPO=SEU-USUARIO/SEU-REPO

powershell -NoProfile -ExecutionPolicy Bypass -Command "irm https://raw.githubusercontent.com/%REPO%/main/instalar.ps1 | iex"

echo.
echo  Pronto. Feche esta janela, abra um terminal novo (PowerShell) e digite: claude
pause
