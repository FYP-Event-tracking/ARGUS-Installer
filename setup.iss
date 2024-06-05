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
