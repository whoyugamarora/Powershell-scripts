# This would map network drives, X is the Drive Letter
New-PSDrive -Name "X" -PSProvider FileSystem -Root "\\server\sharedfolder" -Persist

# Below script will add shortcut on the path stated below -
$shortcutPath = "$env:USERPROFILE\Desktop\Shortcutname.lnk"
$targetPath = "\\Shortcut Target Path"
$wshell = New-Object -ComObject WScript.Shell
$shortcut = $wshell.CreateShortcut($shortcutPath)
$shortcut.TargetPath = $targetPath
$shortcut.Save()

# This would install printers
Add-Printer -Name "OfficePrinter" -DriverName "HP Universal Printing PCL 6" -PortName "192.168.1.100"

#Once the above things are done, the script will print this on the powershell
Write-Host "User environment setup complete!"
