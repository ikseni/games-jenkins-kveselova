@echo off
@rem Это стандартный скрипт Gradle для Windows
set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
java -jar "%DIRNAME%gradle\wrapper\gradle-wrapper.jar" %*
