reg delete HKEY_LOCAL_MACHINESOFTWAREMicrosoftWindowsCurrentVersionExplorerShell Icons v 29 f
taskkill f im explorer.exe
attrib -s -r -h %userprofile%AppDataLocaliconcache.db
del %userprofile%AppDataLocaliconcache.db f q
start explorer
pause