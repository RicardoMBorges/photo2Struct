# photo2Struct

Recognition of chemical structures from images (PNG/JPG), with 2D and 3D visualization, descriptor calculation, and SMILES export.

## How to Use

1. Install [Miniconda]([https://docs.conda.io/en/latest/miniconda.html](https://repo.anaconda.com/miniconda/)) for this file: Miniconda3-py39_25.3.1-1-Windows-x86_64.exe

    Visit the official Miniconda download page: https://docs.conda.io/en/latest/miniconda.html

    Choose the appropriate installer for your system:

    Windows: Miniconda3 Windows 64-bit (recommended)

    macOS: Miniconda3 macOS 64-bit or ARM64 (depending on your chip)

    Linux: Miniconda3 Linux 64-bit


#### Even with Anaconda installed (which defaults to Python 3.13), you can manually create a working environment like this:

conda create -n photo2struct_rdkit python=3.9 -y
conda activate photo2struct_rdkit
conda install -c conda-forge rdkit streamlit pandas py3Dmol -y

   
3. Clone this repository: (or Download the .zip file)


    ```bash
    git clone https://github.com/YOUR_USERNAME/photo2Struct.git
    cd photo2Struct

    Run run_photo2struct.bat

4. OSRA Installation: open PowerShell or Command Prompt (CMD) and type:

    wsl

You will enter the Ubuntu Linux terminal. Now run the following commands:
Update packages:

    sudo apt update && sudo apt upgrade -y

5. Install OSRA dependencies:

    sudo apt install -y osra

5.1 Test if OSRA was installed successfully:

    osra --version


## Requirements

    Python 3.9 via Conda

    osra installed on WSL2 (Linux)

    sudo apt update
    sudo apt install osra

    Installing OSRA on WSL2 Ubuntu


If it shows something like OSRA version 2.0.0 (or similar), you're good to go.


