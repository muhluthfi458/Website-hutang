@echo off
REM ================================================
REM PT. PANCA TEHNIK - Emergency Restore Tool
REM ================================================

color 0C
echo.
echo ╔════════════════════════════════════════════════╗
echo ║   PT. PANCA TEHNIK - DATABASE RESTORE TOOL    ║
echo ╚════════════════════════════════════════════════╝
echo.
echo PERINGATAN: Proses ini akan mengganti semua data!
echo.
pause

REM Sesuaikan path dengan lokasi project kamu
cd /d "D:\sistem-piutang"

echo.
echo [%date% %time%] Memulai restore...
echo.

REM Show available backups
echo ═══════════════════════════════════════════════════
echo BACKUP YANG TERSEDIA:
echo ═══════════════════════════════════════════════════
C:\xampp\php\php.exe artisan db:restore --list
echo ═══════════════════════════════════════════════════
echo.

REM Interactive restore
C:\xampp\php\php.exe artisan db:restore

echo.
echo [%date% %time%] Restore selesai!
echo.
pause
exit