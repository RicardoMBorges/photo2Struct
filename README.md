# photo2Struct

Recognition of chemical structures from images (PNG/JPG), with 2D and 3D visualization, descriptor calculation, and SMILES export.

## How to Use

1. Install [Miniconda w/ Python 3.9]([https://docs.conda.io/en/latest/miniconda.html](https://repo.anaconda.com/miniconda/)) for this file: Miniconda3-py39_25.3.1-1-Windows-x86_64.exe

    Visit the official Miniconda download page: https://docs.conda.io/en/latest/miniconda.html

    Choose the appropriate installer for your system:

    Windows: Miniconda3 Windows 64-bit (recommended)

    macOS: Miniconda3 macOS 64-bit or ARM64 (depending on your chip)

    Linux: Miniconda3 Linux 64-bit


    ```bash
    conda create -n photo2struct_rdkit python=3.9 -y
    conda activate photo2struct_rdkit
    conda install -c conda-forge rdkit streamlit pandas scikit-learn plotly -y

   
2. Download the .zip file for this repository


3. OSRA Installation: open PowerShell or Command Prompt (CMD) and type:

    ```bash
    wsl

You will enter the Ubuntu Linux terminal. Now run the following commands:
Update packages:

    sudo apt update && sudo apt upgrade -y

4. Install OSRA dependencies:

    ```bash
    sudo apt install -y osra

5. Test if OSRA was installed successfully:

    ```bash
    osra --version

If it shows something like OSRA version 2.0.0 (or similar), you're good to go.

## Requirements

    Python 3.9 via Conda

    osra installed on WSL2 (Linux)

    Installing OSRA on WSL2 Ubuntu


## To RUN, 
* Double-Click the file run_photo2struct.bat

* Or (optional), open Anaconda PowerShell Prompt and type:
  
      conda activate photo2struct_rdkit

    * Navegate to the repository folder in your computer and:

      ```bash
      cd "path to your folder"
      
      streamlit run photo2struct_pt.py

