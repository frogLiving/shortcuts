 # Template script for creating shortcuts
# Author:  Sean Richards
# Date:  12/13/2023

# Ability to remove the shortcut
param ($uninstall = $false)

# Required configuration
$ico = ""
$uri = ""
$name = "nameMe.lnk"

# Constant Variables
$icoPath = "C:\Users\Public\Pictures\"
$lnkPath = "C:\Users\Public\Desktop\"
$program = "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"

if ($uninstall -eq $false) {

    # Move ICO file
    Copy-Item $ico -Destination $icoPath

    # Create shortcut
    $WScriptObj = New-Object -ComObject ("WScript.Shell")
    $ShortcutPath = "$lnkPath$name"
    $shortcut = $WscriptObj.CreateShortcut($ShortcutPath)
    $shortcut.TargetPath = $program
    $shortcut.Arguments = $uri
    $ShortCut.IconLocation = "$icoPath$ico, 0"
    $shortcut.Save()
}
else {
    Remove-Item -Path $lnkPath$name -Force
    Remove-Item -Path $icoPath$ico -Force
}

# Don't forget to place your ico file in the folder
