; Skrót Ctrl + Alt + ; do ukrywania ikon
^!;::
ToggleIcons := !ToggleIcons ; Przełączanie stanu

If (ToggleIcons) {
    ; Ukryj ikony
    RegWrite, REG_DWORD, HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, HideIcons, 1
} else {
    ; Pokaż ikony
    RegWrite, REG_DWORD, HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, HideIcons, 0
}

; Restart Explorer, aby zmiany były natychmiastowe
Run, taskkill /f /im explorer.exe ; Zatrzymuje Explorer
Sleep, 1000 ; Czekaj 1 sekundę, aby Explorer zdążył się zamknąć
Run, explorer.exe ; Uruchamia ponownie Explorer
return

; Skrót Ctrl + Alt + ` (backtick) do ponownego pokazywania ikon
^!`:: ; Skrót Ctrl + Alt + `
ToggleIcons := !ToggleIcons ; Przełączanie stanu

If (ToggleIcons) {
    ; Ukryj ikony
    RegWrite, REG_DWORD, HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, HideIcons, 1
} else {
    ; Pokaż ikony
    RegWrite, REG_DWORD, HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, HideIcons, 0
}

; Restart Explorer, aby zmiany były natychmiastowe
Run, taskkill /f /im explorer.exe ; Zatrzymuje Explorer
Sleep, 1000 ; Czekaj 1 sekundę, aby Explorer zdążył się zamknąć
Run, explorer.exe ; Uruchamia ponownie Explorer
return
