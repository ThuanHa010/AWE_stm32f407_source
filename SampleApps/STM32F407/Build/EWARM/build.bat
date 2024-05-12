REM IAR Headless Builds:https://www.iar.com/support/tech-notes/general/build-from-the-command-line/
REM headless-build.bat is missing an import switch...so need to start at a lower level: https://community.nxp.com/thread/388962

"C:\Program Files (x86)\IAR Systems\Embedded Workbench 8.4\common\bin\IarBuild.exe" STM32F407_Discovery.ewp -build Release -log all

CALL :checkError

EXIT /B 0

:checkError
  IF %ERRORLEVEL% NEQ 0 (
      echo Error while building IAR for STM32F407
      EXIT 1
  )
