# Flipper Multi 🔥

Flipper Multi is a modular installer for Flipper Zero tools, BadUSB payloads, BadKB payloads, and firmware — designed for educational and testing purposes only.

## ✨ Features
- 📥 Easily download and install Flipper Zero payloads and firmware directly from GitHub repositories.
- 🧭 Organized menu system to navigate different categories of scripts.
- ⚡ Lightweight batch-based installer; no additional software required.

## ⚠️ Disclaimer
> **This tool is intended for educational and testing purposes only.**  
> Any misuse of this project is strictly discouraged. The developer is not responsible for any damages or illegal activities caused by its usage.

## 🚀 Installation
1. Download or clone the repository:
    ```bash
    git clone https://github.com/hayshemi/Flipper-Multi.git
    ```
2. Navigate into the folder:
    ```bash
    cd Flipper-Multi
    ```
3. Run `main.bat`
    - Ensure you have `curl` installed (included by default on Windows 10/11).
    - Recommended to run as Administrator if installing to protected directories.

## 🛠️ Usage
- Run `main.bat`
- Choose your desired script category
- Select the payload or firmware you want to install
- Specify your download directory
- The script will handle downloading automatically.

## ➕ Adding Your Own Links
If you want to add your own payloads or repositories:
1. Open `main.bat` in any text editor (such as Notepad++).
2. Locate the section where `script_name` and `script_url` are defined.
3. Replace or add new entries with your own links.

Example:
```batch
set script_name=YourPayload.zip
set script_url=https://yourserver.com/yourpayload.zip
```
Note:
Make sure your payload is hosted as a `.zip` file — the script expects this format.
