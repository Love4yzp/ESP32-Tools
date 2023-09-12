Enter the following in the current path:

```sh
./esptool --chip esp32s3 --port %port% --baud 921600 write_flash -z 0x0 firmware.bin
```

Replace `%port%` with the corresponding serial port number, such as `/dev/ttyUSB0`, etc.