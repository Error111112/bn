ho off
:: التوقف عن السيرفر الحالي في ADB إذا كان يعمل
adb kill-server > nul 2>&1
adb start-server > nul 2>&1

@cd/d "%~dp0"

:: التحقق من وجود اتصال بالإنترنت
echo Checking Internet connection...

:: استخدام nslookup للتحقق من الاتصال بالإنترنت
nslookup google.com > nul 2>&1
if %errorlevel% neq 0 (
    echo No internet connection found. Please check your internet connection.
    pause
    exit
)
echo Internet connection verified.

:: إعداد اللون الأخضر
color 0a

:: التحقق من وجود ملفات ADB الأساسية أو تنزيلها
echo ============================
echo Downloading ADB files...
echo ============================

:: تنزيل adb.exe إذا لم يكن موجود
if not exist "adb.exe" (
    powershell -Command "Invoke-WebRequest -Uri 'https://dl.dropboxusercontent.com/s/of4ko8tmwquqac1w9ep22/adb.exe?rlkey=yjfusweyn29b4cobhpohvyfu0&st=mrf3wbac&dl=1' -OutFile '%cd%\adb.exe'" > nul 2>&1
    if not exist "adb.exe" (
        echo Failed to download adb.exe using PowerShell. Trying with curl...
        curl -L "https://dl.dropboxusercontent.com/s/of4ko8tmwquqac1w9ep22/adb.exe?rlkey=yjfusweyn29b4cobhpohvyfu0&st=mrf3wbac&dl=1" -o "%cd%\adb.exe" > nul 2>&1
        if not exist "adb.exe" (
            echo Failed to download adb.exe. Check your internet connection or try again later. > nul 2>&1
            pause
            exit
        )
    )
) else (
    echo adb.exe found. Skipping download. > nul 2>&1
)

:: تنزيل AdbWinApi.dll إذا لم يكن موجود
if not exist "AdbWinApi.dll" (
    powershell -Command "Invoke-WebRequest -Uri 'https://dl.dropboxusercontent.com/s/e42ppgrkp5gei48pwqkq0/AdbWinApi.dll?rlkey=qjrk9241o3gmaikncro9lypru&st=7w9yappu&dl=1' -OutFile '%cd%\AdbWinApi.dll'" > nul 2>&1
    if not exist "AdbWinApi.dll" (
        echo Failed to download AdbWinApi.dll using PowerShell. Trying with curl... > nul 2>&1
        curl -L "https://dl.dropboxusercontent.com/s/e42ppgrkp5gei48pwqkq0/AdbWinApi.dll?rlkey=qjrk9241o3gmaikncro9lypru&st=7w9yappu&dl=1" -o "%cd%\AdbWinApi.dll" > nul 2>&1
        if not exist "AdbWinApi.dll" (
            echo Failed to download AdbWinApi.dll. Check your internet connection or try again later. > nul 2>&1
            pause
            exit
        )
    )
) else (
    echo AdbWinApi.dll found. Skipping download. > nul 2>&1
)

:: تنزيل الملف المطلوب ano_emu_c2.dat إذا لم يكن موجود
echo Downloading necessary files...
if not exist "ano_emu_c2.dat" (
    powershell -Command "Invoke-WebRequest -Uri 'https://dl.dropboxusercontent.com/s/1vsw1j1ll1femdm094c8r/ano_emu_c2.dat?rlkey=8hod3tyv2gmjnke3jixnvg6fg&st=s8cdpskz&dl=0' -OutFile '%cd%\ano_emu_c2.dat'" > nul 2>&1
    if not exist "ano_emu_c2.dat" (
        echo Failed to download the necessary file. Trying with curl... > nul 2>&1
        curl -L "https://dl.dropboxusercontent.com/s/1vsw1j1ll1femdm094c8r/ano_emu_c2.dat?rlkey=8hod3tyv2gmjnke3jixnvg6fg&st=s8cdpskz&dl=0" -o "%cd%\ano_emu_c2.dat" > nul 2>&1
        if not exist "ano_emu_c2.dat" (
            echo Failed to download the necessary file. Check your internet connection or try again later. > nul 2>&1
            pause
            exit
        )
    )
) else (
    echo ano_emu_c2.dat found. Skipping download. > nul 2>&1
)

:: التحقق من تشغيل ADB والتأكد من وجود الجهاز
echo Checking for connected devices...
adb devices | findstr "device" > nul 2>&1
if %errorlevel% neq 0 (
    echo No devices or emulator found. Please start your emulator or connect a device. > nul 2>&1
    pause
    exit
)
echo Device detected successfully. > nul 2>&1

:: تعريف النسخ والمسارات لكل نسخة
set global=com.tencent.ig
set korea=com.pubg.krmobile
set taiwan=com.rekoo.pubgm

set global_lib_path=/data/data/com.tencent.ig/lib/libopenplatform.so
set korea_lib_path=/data/data/com.pubg.krmobile/lib/libopenplatform.so
set taiwan_lib_path=/data/data/com.rekoo.pubgm/lib/libopenplatform.so

set global_ano_path=/data/data/com.tencent.ig/files/ano_tmp/ano_emu_c2.dat
set korea_ano_path=/data/data/com.pubg.krmobile/files/ano_tmp/ano_emu_c2.dat
set taiwan_ano_path=/data/data/com.rekoo.pubgm/files/ano_tmp/ano_emu_c2.dat

:: عرض قائمة المحاكيات
cls
echo ================================
echo Select the Emulator:
echo ================================
echo 1 - GameLoop Emulator
echo 2 - LDPlayer Emulator
echo ================================
choice /c 12 /n /m "Enter your choice: "

:: معالجة اختيار المحاكي
if errorlevel 2 (
    set emulator=LDPlayer
    set flag_prefix=ldplayer_flag
    set auto_reset=false
    echo LDPlayer Emulator selected. > nul 2>&1
) else if errorlevel 1 (
    set emulator=GameLoop
    set flag_prefix=gameloop_flag
    set auto_reset=true
    echo GameLoop Emulator selected. > nul 2>&1
)

:: عرض قائمة النسخ بناءً على المحاكي
cls
echo ================================
echo Emulator: %emulator%
echo ================================
echo Select the Version:
echo ================================
echo 1 - Global Version
echo 2 - Korean Version
echo 3 - Taiwan Version
echo 4 - Fix Bypass
echo ================================
choice /c 1234 /n /m "Enter your choice: "

:: معالجة اختيار النسخة
if errorlevel 4 (
    echo Resetting bypass... > nul 2>&1
    del /f /q %flag_prefix%_* > nul 2>&1
    echo Bypass reset complete. > nul 2>&1
    pause
    exit
) else if errorlevel 3 (
    set version=%taiwan%
    set lib_path=%taiwan_lib_path%
    set ano_path=%taiwan_ano_path%
    set flag_file=%flag_prefix%_taiwan
    set version_name=Taiwan Version
) else if errorlevel 2 (
    set version=%korea%
    set lib_path=%korea_lib_path%
    set ano_path=%korea_ano_path%
    set flag_file=%flag_prefix%_korea
    set version_name=Korean Version
) else if errorlevel 1 (
    set version=%global%
    set lib_path=%global_lib_path%
    set ano_path=%global_ano_path%
    set flag_file=%flag_prefix%_global
    set version_name=Global Version
)

:: تنظيف الملفات المؤقتة (GameLoop فقط)
if "%auto_reset%"=="true" (
    del /f /q "%flag_file%" > nul 2>&1
)

:: حقن libmario.so إذا لم يتم حقنه مسبقًا
if not exist "%flag_file%" (
    echo Preparing files for injection... > nul 2>&1
    adb push libmario.so %lib_path% > nul 2>&1
    echo done > "%flag_file%"
) else (
    echo Files already prepared. > nul 2>&1
)

:: حقن ملف ano_emu_c2.dat في كل مرة
echo Preparing additional resources... > nul 2>&1
timeout /t 7 /nobreak > nul
adb push ano_emu_c2.dat %ano_path% > nul 2>&1
echo done > nul 2>&1

:: تشغيل اللعبة
echo Starting the game... > nul 2>&1
adb shell monkey -p %version% -c android.intent.category.LAUNCHER 1 > nul 2>&1

:: عرض رسالة نجاح
cls
echo ===================================
echo             BYPASS DONE
echo ===================================
pause
