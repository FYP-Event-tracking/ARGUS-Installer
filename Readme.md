## Setup for Frontend and Track and Count System

1. `clean and Build` Frondend application from Apache Netbeans.

2. Copy executable jar fil and lib folder from `dist` folder and paste them to `Frontend` folder in installer.

3. Copy `rest_api.py` file, `best.pt` model and `requirements.txt` from `Track and count system/RestApi` and paste them to `Track and Count System/RestApi` folder in installer.

4. Copy `web_socket.py` file, `best.pt` model and `requirements.txt` from `Track and count system/WebSocket` and paste them to `Track and Count System/WebSocket` folder in installer.

5. 3. Copy `rest_api.py` file, `best.pt` model and `requirements.txt` from `Track and count system/RestApi_continue` and paste them to `Track and Count System/RestApi_continue` folder in installer.

6. From `Track and Count System/RestApi` directory run,

- `python -m venv venv`
- `venv\Scripts\activate`
- `pip install -r requirements.txt`

7. Create `TCS_RestApi.bat` file.

        @echo off
        REM Change directory to where your virtual environment and app.py are located
        cd %~dp0

        REM Activate the virtual environment
        call venv\Scripts\activate

        REM Run the Python script
        python rest_api.py

        REM Pause the command prompt so you can see any output before it closes
        pause

8. from `Track and Count System/WebSocket` directory run,

- `python -m venv venv`
- `venv\Scripts\activate`
- `pip install -r requirements.txt`

9. Create `TCS_WebSocket.bat` file.

        @echo off
        REM Change directory to where your virtual environment and app.py are located
        cd %~dp0

        REM Activate the virtual environment
        call venv\Scripts\activate

        REM Run the Python script
        python web_socket.py

        REM Pause the command prompt so you can see any output before it closes
        pause

10. From `Track and Count System/RestApi_continue` directory run,

- `python -m venv venv`
- `venv\Scripts\activate`
- `pip install -r requirements.txt`

11. Create `TCS_RestApi_continue.bat` file.

        @echo off
        REM Change directory to where your virtual environment and app.py are located
        cd %~dp0

        REM Activate the virtual environment
        call venv\Scripts\activate

        REM Run the Python script
        python rest_api.py

        REM Pause the command prompt so you can see any output before it closes
        pause

12. Add `Project Argus.bat` file to root directory.

        @echo off
        start "" "Frontend/ProjectArgus.jar"

        start "" "Track and Count System/RestApi/TCS_RestApi.bat"

        start "" "Track and Count System/WebSocket/TCS_WebSocket.bat"

        start "" "Track and Count System/WebSocket/TCS_RestApi_continue.bat"

11. Add `setup.iss` file to root directory and compile it using inno setup compiler.

        [Setup]
        AppName=Project Argus
        AppVersion=1.0
        DefaultDirName={pf}\Project Argus
        DefaultGroupName=Project Argus
        OutputDir=Output
        Compression=lzma
        SolidCompression=yes
        OutputBaseFilename=Project Argus Installer

        [Files]
        Source: "Project Argus.bat"; DestDir: "{app}"
        Source: "Frontend\*"; DestDir: "{app}\Frontend"; Flags: recursesubdirs
        Source: "Track and Count System\*"; DestDir: "{app}\Track and Count System"; Flags: recursesubdirs

        [Icons]
        Name: "{group}\Project Argus"; Filename: "{app}\Project Argus.bat"

12. It will create `output` folder and it include `Project Argus Installer.exe`.

13. Install `Python 3.11.5` in target machine.

13. Install the setup and run `Project Argus.bat`.

## Backend

1. clone `https://github.com/FYP-Event-tracking/Backend-Argus` and `docker-compose up --build`.