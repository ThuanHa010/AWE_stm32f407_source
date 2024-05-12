REM @ECHO OFF

REM Delete old build log file
IF EXIST "%~dp0STM32F407_Discovery.log" DEL "%~dp0STM32F407_Discovery.log"

REM Run the build and save the error level if errors are present
SET FAILED=0
start "" /WAIT "C:\Keil_v5\UV4\UV4" -b "%~dp0STM32F407_Discovery.uvprojx" -q -o"%~dp0STM32F407_Discovery.log"
IF ERRORLEVEL 2 SET FAILED=%ERRORLEVEL%

REM Print result
TYPE "%~dp0STM32F407_Discovery.log"

REM Exit with error level
IF NOT "%FAILED%" == "0" EXIT /B %FAILED%

REM Return success
EXIT /B 0
