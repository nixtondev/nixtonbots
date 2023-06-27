@echo off
break off 

title MasterTech

color 0a
echo MasterTech - [ Version: 1.3 ]
echo.

:cmd

set /p cmd=%USERPROFILE%:

%cmd%

goto cmd 