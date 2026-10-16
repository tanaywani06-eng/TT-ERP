@echo off
setlocal
cd /d "%~dp0backend"
echo ======================================
echo           TT ERP SYSTEM
echo ======================================
where py >nul 2>nul
if not exist ".venv\Scripts\python.exe" (
  echo Creating Python virtual environment...
  py -m venv .venv
  if errorlevel 1 goto no_python
)
echo Installing or checking requirements...
".venv\Scripts\python.exe" -m pip install -r requirements.txt
if errorlevel 1 goto install_error
echo.
echo Starting TT ERP. Keep this window open.
echo Open http://127.0.0.1:8000 in your browser.
echo API documentation: http://127.0.0.1:8000/docs
echo Database is stored locally in backend\tt_erp.db
".venv\Scripts\python.exe" -m uvicorn app.main:app --host 127.0.0.1 --port 8000
pause
goto end
:no_python
echo Python launcher (py) was not found. Install Python 3.11 or newer and enable Add Python to PATH.
pause
goto end
:install_error
echo Dependency installation failed. Check the error above and your internet connection.
pause
:end
endlocal
