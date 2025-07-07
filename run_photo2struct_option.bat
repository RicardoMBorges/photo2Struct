@echo off
setlocal

:: Caminho para o conda
CALL "%~dp0\..\Anaconda3\Scripts\activate.bat"

:: Nome do ambiente
set ENV_NAME=photo2struct_rdkit

echo.
echo 🔍 Verificando se o ambiente "%ENV_NAME%" existe...
conda env list | findstr /C:"%ENV_NAME%" >nul
if errorlevel 1 (
    echo.
    echo ⚙️  Criando o ambiente "%ENV_NAME%" com Python 3.9...
    conda create -n %ENV_NAME% python=3.9 -y
)

echo.
echo ✅ Ativando o ambiente "%ENV_NAME%"...
CALL conda activate %ENV_NAME%

echo.
echo 📦 Instalando dependências necessárias (rdkit, streamlit, etc.)...
conda install -c conda-forge rdkit streamlit pandas py3Dmol -y

echo.
echo 🚀 Iniciando a aplicação...
streamlit run photo2Struct_english.py

pause
