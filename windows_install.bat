@echo off
setlocal

rem Easy Windows installation by coder14875
rem Check if Python 3 is already installed
python --version > nul 2>&1
if %errorlevel% equ 0 (
    echo Python 3 is already installed.
) else (
    echo Python 3 is not found. Installing...
    rem Download Python installer from the given website
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://www.python.org/ftp/python/3.11.4/python-3.11.4-amd64.exe', 'python_installer.exe')"

    rem Install Python 3
    python_installer.exe /quiet InstallAllUsers=1 PrependPath=1
    del python_installer.exe

    echo Python 3 has been installed.
)

rem Check if pip is already installed
pip --version > nul 2>&1
if %errorlevel% equ 0 (
    echo pip is already installed.
) else (
    echo pip is not found. Installing...
    rem Download get-pip.py script
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://bootstrap.pypa.io/get-pip.py', 'get-pip.py')"

    rem Install pip
    python get-pip.py
    del get-pip.py

    echo pip has been installed.
)

rem Install requirements
echo installing client requirements
pip install msvc-runtime
pip install -r requirements.txt

echo Installation completed.
endlocal
PAUSE