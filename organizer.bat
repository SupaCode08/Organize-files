@echo off
setlocal enabledelayedexpansion

:: ==========================================================
:: SYSTEM: PURE ORGANIZER v7.0 [CLEAN & FAST]
:: ==========================================================

title File Organizer
echo Organizing files...
echo.

:: Configuration
set "IMG=Images"
set "DOC=Documents"
set "ARC=Archives"
set "VID=Videos"
set "AUD=Audio"
set "INS=Installers"
set "DAT=Data_Code"

:: Create folders
for %%d in ("%IMG%" "%DOC%" "%ARC%" "%VID%" "%AUD%" "%INS%" "%DAT%") do (
    if not exist "%%~d" mkdir "%%~d"
)

:: Counter
set /a count=0

:: --- CORE ENGINE ---
call :MoveFiles ".jpg .jpeg .png .gif .bmp .webp .svg .ico .psd .ai" "%IMG%"
call :MoveFiles ".pdf .doc .docx .xls .xlsx .ppt .pptx .txt .csv .rtf" "%DOC%"
call :MoveFiles ".zip .rar .7z .tar .gz .iso" "%ARC%"
call :MoveFiles ".mp4 .mkv .mov .avi .wmv .flv" "%VID%"
call :MoveFiles ".mp3 .wav .flac .m4a .aac" "%AUD%"
call :MoveFiles ".exe .msi .apk" "%INS%"
call :MoveFiles ".py .js .html .css .json .xml .cpp .c .php .bat" "%DAT%"

echo.
echo Done! Total files moved: !count!
timeout /t 2 >nul
exit /b

:MoveFiles
for %%e in (%~1) do (
    for %%f in ("*%%e") do (
        if /i "%%~nxf" neq "%~nx0" (
            if exist "%~2\%%~nxf" (
                set "ts=%time::=%" & set "ts=!ts:.=!"
                move "%%f" "%~2\%%~nf_!ts!%%~xf" >nul 2>&1
            ) else (
                move "%%f" "%~2\" >nul 2>&1
            )
            set /a count+=1
            echo [MOVED] %%~nxf
        )
    )
)
goto :eof
