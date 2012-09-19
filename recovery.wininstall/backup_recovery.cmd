set tempfile=%date:~4%_%time::=%
set tempfile=%tempfile:/=%
set tempfile=%tempfile:.=%
set tempfile=%tempfile: =%

set recovery_img=recovery.%tempfile%.img

adb root
adb shell dd if=/dev/block/mtdblock6 of=/mnt/sdcard/%recovery_img%
adb pull /mnt/sdcard/%recovery_img% ./%recovery_img%
adb shell rm /mnt/sdcard/%recovery_img%

if exist %recovery_img% (goto backup_ok) else (goto backup_failed)     

:backup_ok
echo -=Recovery image backup complete. File %recovery_img%=-
goto exit_label

:backup_failed
echo -=Recovery image backup failed=-
goto exit_label

:exit_label

