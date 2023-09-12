# Firmware Flashing Instructions

This guide provides instructions on how to flash firmware using the provided `flash.bat` script. This process is suitable for Windows 10 and later versions.

## Prerequisites
- Windows 10 or later.
- The `flash.bat` script provided with the firmware.
- A device connected to a COM port (e.g., COM5).

## Procedure

1. **Open the command prompt.** You can do this by searching for `cmd` in the Start menu, or by pressing `Win + R`, typing `cmd`, and pressing `Enter`.

2. **Navigate to the directory containing the `flash.bat` script.** You can change directories in the command prompt using the `cd` command. For example, if `flash.bat` is in a folder called `Firmware` on your desktop, you would use the command `cd Desktop\Firmware`.

3. **Run the `flash.bat` script.** Type `flash.bat` in the command prompt and press `Enter`. 

4. **Enter the COM port.** The script will prompt you to enter the COM port that your device is connected to. This will typically be something like `COM5`. Enter the COM port number and press `Enter`.

5. **Wait for the firmware to flash.** The script will now flash the firmware to your device. This may take a few minutes. Do not disconnect your device while the firmware is being flashed.

After the firmware has been successfully flashed, the script will complete, and you can close the command prompt. Your device is now ready to use with the new firmware.

Contact: [Spencer Yan](https://github.com/love4yzp)