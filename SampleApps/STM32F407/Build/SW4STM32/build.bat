REM headless-build.bat: http://www.openstm32.org/tiki-view_forum_thread.php?comments_parentId=3334
REM headless-build.bat is missing an import switch...so need to start at a lower level: https://community.nxp.com/thread/388962


SET CONSOLE=-vmargs -Dorg.eclipse.cdt.core.console=org.eclipse.cdt.core.systemConsole
C:\Ac6\SystemWorkbench\eclipsec.exe --launcher.suppressErrors -nosplash -application org.eclipse.cdt.managedbuilder.core.headlessbuild -cleanBuild STM32F407_Discovery/Release -data .\workspace -import .\STM32F407_Discovery %CONSOLE%