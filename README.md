## Setup for Frontend and Track and Count System

1. `clean and Build` Frondend application from Apache Netbeans.

2. Copy executable jar fil and lib folder from `dist` folder and paste them to `Frontend` folder in installer.

3. Copy `app.py` file and `requirements.txt` from `Track and count system` and paste them to `Build/Track and Count System` folder in installer.

4. change endpoints `host.docker.internal` in `app.py` to `localhost`.

4. from `Build/Track and Count System` directory run,

- `python -m venv venv`
- `venv\Scripts\activate`
- `pip install -r requirements.txt`
- `pip install pyinstaller`
- `pyinstaller --name TCSystem --onefile app.py`

5. Add needed `setup.iss` file and comile it using inno setup compiler.

6. Install the `TCSystemInstaller` in `output` folder to same directory.

7. Copy installed `TCSystem.exe` file to root folder `Track and System` folder.

8. Add `Project Argus.bat` file to root directory.

9. Add `setup.iss` file to root directory and compile it using inno setup compiler.

10. It will create `output` folder and it include `Project Argus Installer.exe`.

11. Insall the setup and run `Project Argus.bat`.

## Backend

1. clone `https://github.com/FYP-Event-tracking/Backend-Argus` and `docker-compose up --build`.