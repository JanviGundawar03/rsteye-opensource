[Setup]
; Define the name and output location of the installer
AppName=RstEye App
AppVersion=1.0
DefaultDirName={pf}\RstEye
DefaultGroupName=RstEye
OutputBaseFilename=RstEyeInstaller
Compression=lzma
SolidCompression=yes

[Files]
; Include the generated .exe file
Source: "dist\app.exe"; DestDir: "{app}"; Flags: ignoreversion

; Include your .env file if needed
Source: ".env"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\RstEye App"; Filename: "{app}\app.exe"

[Run]
; Run the application after installation
Filename: "{app}\app.exe"; Description: "Run RstEye App"; Flags: nowait postinstall skipifsilent
