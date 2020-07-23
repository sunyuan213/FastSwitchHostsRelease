; 脚本由 Inno Setup 脚本向导 生成！
; 有关创建 Inno Setup 脚本文件的详细资料请查阅帮助文档！

#define MyAppName "FastSwitchHosts"
#define MyAppVersion "1.0.1.3"
#define MyAppPublisher "sunyuan213"
#define MyAppURL "https://github.com/sunyuan213/FastSwitchHostsRelease"
#define MyAppExeName "FastSwitchHosts.exe"

[Setup]
; 注: AppId的值为单独标识该应用程序。
; 不要为其他安装程序使用相同的AppId值。
; (生成新的GUID，点击 工具|在IDE中生成GUID。)
AppId={{1F051CCE-B9A3-47F5-88E5-BA53F17582B1}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AppMutex=FastSwitchHosts
DisableDirPage=no
DisableProgramGroupPage=no
AlwaysShowGroupOnReadyPage=yes
OutputDir=D:\github\FastSwitchHostsRelease
OutputBaseFilename=FastSwitchHosts_setup
SetupIconFile=D:\github\FastSwitchHosts\Dll\ico.ico
UninstallDisplayIcon={app}\{#MyAppExeName}
Compression=lzma
SolidCompression=yes
AllowCancelDuringInstall=yes
DisableFinishedPage=yes
AlwaysRestart=no
RestartIfNeededByRun=no

[Languages]
Name: "chinesesimp"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone; OnlyBelowVersion: 0,10.0

[Files]
Source: "D:\github\FastSwitchHosts\Release\FastSwitchHosts.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\github\FastSwitchHosts\Release\FastSwitchHostsFiddler.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\github\FastSwitchHosts\Release\HPSocket4C.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\github\FastSwitchHosts\Release\HPSocketCS.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\github\FastSwitchHosts\Release\ICSharpCode.SharpZipLib.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\github\FastSwitchHosts\Release\Newtonsoft.Json.dll"; DestDir: "{app}"; Flags: ignoreversion
; 注意: 不要在任何共享系统文件上使用“Flags: ignoreversion”

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}";Flags: closeonexit
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
