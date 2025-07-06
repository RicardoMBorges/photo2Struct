# photo2Struct

Recognition of chemical structures from images (PNG/JPG), with 2D and 3D visualization, descriptor calculation, and SMILES export.

## How to Use

1. Install [Miniconda](https://docs.conda.io/en/latest/miniconda.html)
2. Clone this repository:
   ```bash
   git clone https://github.com/YOUR_USERNAME/photo2Struct.git
   cd photo2Struct

    Run run_photo2struct.bat

## Requirements

    Python 3.9 via Conda

    osra installed on WSL2 (Linux)

    sudo apt update
    sudo apt install osra

    Installing OSRA on WSL2 Ubuntu

## Open PowerShell or Command Prompt (CMD) and type:

    wsl

You will enter the Ubuntu Linux terminal. Now run the following commands:
Update packages:

    sudo apt update && sudo apt upgrade -y

### Install OSRA dependencies:

  sudo apt install -y osra

#### Test if OSRA was installed successfully:

    osra --version

If it shows something like OSRA version 2.0.0 (or similar), you're good to go.


