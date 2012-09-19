@echo off

if "%~1"=="" (goto recovery_img_not_provided)

set recovery_img=%1%

echo %recovery_img%

if exist %recovery_img% (goto copy_recovery) ELSE (goto no_recovery_img)

:copy_recovery
adb root
adb push %recovery_img% /mnt/sdcard/%recovery_img%
adb shell dd if=/mnt/sdcard/%recovery_img% of=/dev/block/mtdblock6 
adb shell rm /mnt/sdcard/%recovery_img%
echo -=Recovery image load complete. Reboot device to recovery using boot_recovery.cmd=-
goto exit_label

:no_recovery_img
echo -=Recovery image %recovery_img% is not found=-
goto exit_label

:recovery_img_not_provided
echo -=Please provide recovery image name. Usage: install_recovery.cmd  recovery.img=-
goto exit_label

:exit_label