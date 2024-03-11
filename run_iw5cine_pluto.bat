@echo off
set gamepath=PATHTOGAME
cd /D %LOCALAPPDATA%\Plutonium
start /wait /abovenormal bin\plutonium-bootstrapper-win32.exe t5mp "%gamepath%" -lan +set intro 0 +set fs_game "mods/mp_t4cine" 