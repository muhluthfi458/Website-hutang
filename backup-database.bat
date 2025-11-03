@echo off
REM ================================================
REM PT. PANCA TEHNIK - Auto Backup Script
REM ================================================

echo [%date% %time%] Starting backup...

REM Sesuaikan path dengan lokasi project kamu
cd /d "D:\sistem-piutang"

REM Run backup command
C:\xampp\php\php.exe artisan db:backup --encrypt --cloud --delete-old

echo [%date% %time%] Backup completed!

REM Optional: Copy backup ke external drive
REM xcopy /Y /I storage\app\backups\*.* "E:\Backup\PT_Panca_Tehnik\"

exit