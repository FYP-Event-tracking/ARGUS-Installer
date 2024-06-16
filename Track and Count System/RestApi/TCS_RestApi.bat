@echo off
REM Change directory to where your virtual environment and app.py are located
cd %~dp0

REM Activate the virtual environment
call venv\Scripts\activate

REM Run the Python script
python rest_api.py

REM Deactivate the virtual environment
deactivate

REM Pause the command prompt so you can see any output before it closes
pause
