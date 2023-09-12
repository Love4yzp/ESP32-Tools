@echo off
setlocal
cd /d "%~dp0"
:: Set Chip
set chip=esp32s3

:: Set Baud
set baud=921600

:: List COM ports
echo Available ports and devices:
echo.
for /F "tokens=* delims=" %%A in ('wmic path Win32_PnPEntity get Name ^| findstr /C:"COM" ^| findstr /C:"CH340"') do (
  echo %%A
)

:: Prompt for port
:chooseport
echo.
echo Please enter the COM port to use (e.g., COM5):
set /p port=

:: Check if chosen port is valid and contains "CH340"
for /F "tokens=* delims=" %%A in ('wmic path Win32_PnPEntity get Name ^| findstr /C:"%port%" ^| findstr /C:"CH340"') do (
  set device=%%A
  goto :flash
)

echo Port %port% not found
goto :chooseport

:flash:: Print chosen parameters
echo.
echo You have chosen:
echo Chip: %chip%
echo Port: %port% - %device%
echo Baud: %baud%
@REM echo Press any key to continue to...
@REM pause >nul

:: Run esptool for the single file
esptool.exe --chip %chip% --port %port% --baud %baud% write_flash -z 0x0 firmware.bin
  
if ERRORLEVEL 1 (
  echo Flashing with the single file failed with error %ERRORLEVEL%.
  goto :end
)

:: End of script
:end
endlocal