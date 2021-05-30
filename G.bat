@echo off
for /F "tokens=2" %%i in ('date /t') do set mydate=%%i
set mydate=%mydate:/=-%
set mytime=%time::=-%
set filename=%mydate%-%mytime%.txt
dir > %filename% 
pause