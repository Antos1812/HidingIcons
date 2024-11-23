; Shortcut Ctrl + Alt + ; to hide icons
^!;::
ToggleIcons := !ToggleIcons ; Toggle the state

If (ToggleIcons) {
    ; Hide icons
    RegWrite, REG_DWORD, HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, HideIcons, 1
} else {
    ; Show icons
    RegWrite, REG_DWORD, HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, HideIcons, 0
}

; Restart Explorer to apply changes immediately
Run, taskkill /f /im explorer.exe ; Stop Explorer
Sleep, 1000 ; Wait 1 second for Explorer to close
Run, explorer.exe ; Restart Explorer
return

; Shortcut Ctrl + Alt + ` (backtick) to show icons again
^!`:: ; Shortcut Ctrl + Alt + `
ToggleIcons := !ToggleIcons ; Toggle the state

If (ToggleIcons) {
    ; Hide icons
    RegWrite, REG_DWORD, HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, HideIcons, 1
} else {
    ; Show icons
    RegWrite, REG_DWORD, HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, HideIcons, 0
}

; Restart Explorer to apply changes immediately
Run, taskkill /f /im explorer.exe ; Stop Explorer
Sleep, 1000 ; Wait 1 second for Explorer to close
Run, explorer.exe ; Restart Explorer
return
