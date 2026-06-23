@echo off
@cd /d "%~dp0"
@set "FILTER_PATH=%~dp0..\_bin\Filters_x64\MPCVideoDec-fork.ax"
@if not exist "%FILTER_PATH%" goto missing
@regsvr32.exe "%FILTER_PATH%" /s
@if %errorlevel% NEQ 0 goto error
:success
@echo.
@echo.
@echo    Installation succeeded.
@echo.
@echo    Please do not delete MPCVideoDec-fork.ax.
@echo    The installer has not copied the file anywhere.
@echo    Keep the built filter under _bin\Filters_x64.
@echo.
@goto done
:missing
@echo.
@echo.
@echo    Installation failed.
@echo.
@echo    "%FILTER_PATH%" was not found.
@echo    Build the x64 Release filter first.
@echo.
@goto done
:error
@echo.
@echo.
@echo    Installation failed.
@echo.
@echo    You need to right click "Install_MPCVideoDec-fork_64.cmd" and choose "Run as administrator".
@echo.
:done
@pause >NUL
