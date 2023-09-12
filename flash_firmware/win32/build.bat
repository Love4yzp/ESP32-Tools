@echo off
SETLOCAL

SET CurrentDir=%cd%

SET ScriptDir=%~dp0

SET CurrentDir=%CurrentDir:~0,-1%
SET ScriptDir=%ScriptDir:~0,-1%

IF NOT "%CurrentDir%"=="%ScriptDir%" (
    cd /d "%ScriptDir%"
)

esptool.exe --chip esp32s3 ^
merge_bin -o firmware.bin ^
--flash_mode dio ^
--flash_size 8MB ^
0x0 ../../../build/bootloader/bootloader.bin ^
0x8000 ../../../build/partition_table/partition-table.bin ^
0x10000 ../../../build/indicator_mission_pack.bin

ENDLOCAL