[Setup]
AppName=TCSystem
AppVersion=1.0
DefaultDirName={pf}\TCSystem
DefaultGroupName=TCSystem
OutputDir=output
OutputBaseFilename=TCSystemInstaller

[Files]
Source: "dist\TCSystem.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\TCSystem"; Filename: "{app}\TCSystem.exe"
