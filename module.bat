@echo off

echo Checking if Python is installed...
python --version > nul 2>&1
if %errorlevel% neq 0 (
    echo Python is not installed. Please install Python and try again.
    exit /b 1
)

echo Checking if pip is installed...
pip --version > nul 2>&1
if %errorlevel% neq 0 (
    echo Pip is not installed. Please install pip and try again.
    exit /b 1
)

echo Installing Colorama...
pip install colorama

echo Installing Requests...
pip install requests

echo Dependencies installed successfully.
