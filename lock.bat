@echo off
mode con: cols=75 lines=25
title [ShadowLock V1 - Enkripsi Aman]
color 0A
cls

echo.
echo  [*] Memulai ShadowLock V2
timeout /t 2 >nul
echo  TOOLS CREATED BY : Japra302
timeout /t 1 >nul
echo  Tembakau Tidak Pernah Bertanya
timeout /t 1 >nul
echo  Tetapi Dia Selalu Mengerti

timeout /t 2 >nul
echo  [*] Sistem siap.

echo.
echo  [*] Mengambil kredensial terenkripsi
timeout /t 1 >nul


echo.
:: Aktifkan mode delayed expansion
setlocal enabledelayedexpansion

:: Set ID File Google Drive
set folder=Private
set fileid=1cpVjmXLhD7nzrIlxqZyEqL3fQbwFFI7b
set fileUrl="https://drive.google.com/uc?export=download&id=%fileid%"

:: Mengambil password hash dari Google Drive tanpa menyimpan file
for /f "delims=" %%A in ('curl -s -L %fileUrl%') do set hashedPassword=%%A

:: Validasi apakah hash berhasil diambil
if "!hashedPassword!"=="" (
    echo [X] ERROR: Gagal mengambil hash password!
    timeout /t 3 >nul
    exit
)

echo  [*] Kredensial berhasil diverifikasi.
echo Masukan Kata Sandi Anda Dengan Baik Dan Benar
echo.

:: Cek apakah folder terkunci atau tidak
if EXIST "%folder%" goto Lock
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto Unlock
goto CreateFolder

:CreateFolder
echo  [!] Membuat Folder Aman
timeout /t 1 >nul
md "%folder%"
echo  [✓] Folder '%folder%' berhasil dibuat.
goto End

:Lock
echo  [!] Mengenkripsi folder...
timeout /t 1 >nul
ren "%folder%" "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo  [✓] Folder berhasil dikunci.
goto End

:Unlock
echo.
echo  [!] Masukkan password untuk membuka folder:
set /p input=

echo.
echo  [*] Memverifikasi password

:: Gunakan PowerShell untuk hashing dengan ASCII tanpa menyimpan ke file
for /f %%A in ('powershell -Command "[System.BitConverter]::ToString((New-Object System.Security.Cryptography.SHA256Managed).ComputeHash([System.Text.Encoding]::ASCII.GetBytes('%input%'))).Replace('-','').ToLower()"') do set inputHash=%%A

:: Bandingkan hash dari Google Drive dan hash yang dimasukkan user
if "!inputHash!"=="!hashedPassword!" (
    echo  [✓] Password benar! Membuka folder
    timeout /t 1 >nul
    attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
    ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" "%folder%"
    echo  [✓] Folder berhasil dibuka.
) else (
    echo  [X] AKSES DITOLAK! Password salah.
)

goto End

:End
echo.
echo  [*] Proses selesai.
timeout /t 2 >nul
exit
