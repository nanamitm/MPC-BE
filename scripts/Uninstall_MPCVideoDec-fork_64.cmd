@echo off
@cd /d "%~dp0"
@set "FILTER_PATH=%~dp0..\_bin\Filters_x64\MPCVideoDec-fork.ax"
@if not exist "%FILTER_PATH%" goto missing
@regsvr32.exe "%FILTER_PATH%" /u /s
@if %errorlevel% NEQ 0 goto error
:success
@echo.
@echo.
@echo    Uninstallation succeeded.
@echo.
@goto done
:missing
@echo.
@echo.
@echo    Uninstallation failed.
@echo.
@echo    "%FILTER_PATH%" was not found.
@echo    Make sure the built filter still exists under _bin\Filters_x64.
@echo.
@goto done
:error
@echo.
@echo.
@echo    Uninstallation failed.
@echo.
@echo    You need to right click "Uninstall_MPCVideoDec-fork_64.cmd" and choose "Run as administrator".
@echo.
:done
@pause >NUL
