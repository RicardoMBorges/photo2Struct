@echo off
set ENV_NAME=photo2struct_rdkit

echo.
echo 🔍 Checking if the environment "%ENV_NAME%" exists...
conda info --envs | findstr /C:"%ENV_NAME%" >nul
if errorlevel 1 (
    echo.
    echo 🚧 Environment not found. Creating environment "%ENV_NAME%" with Python 3.9...
    conda create -n %ENV_NAME% python=3.9 -y
    echo.
    echo ✅ Environment created!
) else (
    echo ✅ Environment "%ENV_NAME%" already exists.
)

echo.
echo 🔧 Activating environment and installing dependencies...
call conda activate %ENV_NAME%
conda install -c conda-forge rdkit streamlit pandas py3Dmol -y

echo.
echo 🚀 Starting photo2Struct app...
streamlit run photo2Struct_english.py

pause
