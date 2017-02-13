REM  Script disable to execute PowerShell  scripts in console
REM  Date: 08.01.2017
REM  Author Vitalii Shkibtan
REM  Version: 1

powershell -Command Set-ExecutionPolicy AllSigned

@echo The PowerShell execution in console was disabled. Only scripts signed by a trusted publisher can be run
