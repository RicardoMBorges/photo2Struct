@echo off
setlocal

:: Detecta caminho base do Conda
set "CONDA_DIR=%USERPROFILE%\miniconda3"
if not exist "%CONDA_DIR%\Scripts\activate.bat" (
    echo [ERRO] Não encontrei o Miniconda em %CONDA_DIR%
    echo Verifique se o Miniconda está instalado.
    pause
    exit /b
)

:: Ativa o ambiente
call "%CONDA_DIR%\Scripts\activate.bat" photo2struct_rdkit

:: Vai para o diretório do projeto (onde este .bat está)
pushd "%~dp0"

:: Verifica se Streamlit está instalado
where streamlit >nul 2>&1
if errorlevel 1 (
    echo [ERRO] Streamlit não está instalado no ambiente photo2struct_rdkit.
    echo Instale com: conda activate photo2struct_rdkit && pip install streamlit
    pause
    exit /b
)

:: Roda o script
streamlit run photo2struct_pt.py

:: Retorna ao diretório anterior
popd

:: Espera o usuário ver a saída
pause
