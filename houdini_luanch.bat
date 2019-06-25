@echo off
rem houdini launcher

rem source global vars
rem call \\network_drive\current_project\00_pipeline\globals.bat

rem set Houdini paths
rem variables PIPELINE, ROOT were set in globals.bat

set "SVN=F:\svn\art\Houdini"
set "HOUDINI_TOOLBAR_PATH=%SVN%\HoudiniTool\HexTool\toolbar;&"
set "QLIB=%SVN%\HoudiniTool\qLib"
set "QOTL=%QLIB%\otls"

set "HOUDINI_VERSION=Houdini17.5.293"
set "PIPELINE=%APP_HOUDINI%"
set "HOUDINI_PATH=&;%PIPELINE%/houdini;C:/Users/%USERNAME%/Documents/houdini17.5/"

set "HOUDINI_OTLSCAN_PATH=&;%QOTL%\base;%QOTL%\future;%QOTL%\experimental;%SVN%\HoudiniTool\HexTool\otls"
set "HOUDINI_MENU_PATH=%SVN%\HoudiniTool\HexTool;$HFS\houdini;$HOME\houdini17.5;$HFS\houdini;&"

set "HOUDINI_SCRIPT_PATH=$HOME\houdini17.5\scripts;$HFS\houdini\scripts;%SVN%\HoudiniTool\HexTool\scripts;&"
set "HOUDINI_USER_PREF_DIR=%SVN%\Houdini\HoudiniTool\HexTool;&"
set "PATH=%SVN%\HoudiniTool\GameDevToolset\bin;&"

set "HOUDINI_SPLASH_FILE=%SVN%\HoudiniTool\HexTool\config\splash_2.jpg"
set "HOUDINI_SPLASH_MESSAGE= | HEX HOUDINI TEAM | %HOUDINI_VERSION% | %USERNAME% |"
set "JOB=%ROOT%"
set "HOUDINI_BACKUP_FILENAME=$BASENAME_bak_$N"
set "HOUDINI_BACKUP_DIR=bak"
set "HOUDINI_NO_START_PAGE_SPLASH=1"
set "HOUDINI_ANONYMOUS_STATISTICS=0"
rem set "HOME=C:/Users/%USERNAME%"
set "HOUDINI_DESK_PATH=&;C:/Users/%USERNAME%/Documents/houdini17.5/desktop"
rem set "HOUDINI_TEMP_DIR=%HOME%/tmp"
set "HOUDINI_BUFFEREDSAVE=1"
set "HOUDINI_IMAGE_DISPLAY_GAMMA=1"
set "HOUDINI_IMAGE_DISPLAY_LUT=%SVN%\HoudiniTool\HexTool\colorspace\linear-to-srgb_14bit.lut"
set "HOUDINI_IMAGE_DISPLAY_OVERRIDE=1"
set "MEGASCANS=%JOB%/20_assets/megascans/Megascans/"
set "MEGASCANS3D=%MEGASCANS%3d/"
rem convert to forward slashes
set "MEGASCANS=%MEGASCANS:\=/%"
set "MEGASCANS3D=%MEGASCANS3D:\=/%"

rem create temp dir for houdini user if it does not exist, also convert to forwardslashes
rem set "TMP=%HOUDINI_TEMP_DIR%"
rem set "TMP=%TMP:/=\%"
rem IF not exist %TMP% (mkdir %TMP%)

rem run Houdini
set "HOUDINI_DIR=%PIPELINE%\%HOUDINI_VERSION%\bin"
set "PATH=%HOUDINI_DIR%;%PATH%"
cd ../../
start houdinifx