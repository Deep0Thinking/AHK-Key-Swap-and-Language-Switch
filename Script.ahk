#Requires AutoHotkey v2.0


; 1. Change input language with Caps Lock


CapsLock::  ; Intercept Caps Lock key press
{
    if GetKeyState("Shift", "P")  ; Check if Shift is pressed
    {
        Send "{CapsLock}"  ; Toggle Caps Lock
    }
    else
    {
        Send "{Alt Down}{Shift Down}{Shift Up}{Alt Up}"  ; Simulate Alt+Shift to change input language
    }
    return
}


; 2. Remap bottom-left keys to Win, Alt, Ctrl order


; Left Ctrl remapped to Left Win
LCtrl::LWin

; Left Alt remapped to Left Ctrl
LAlt::LCtrl

; Left Win remapped to Left Alt
LWin::LAlt


; 3. Swap Ctrl+Tab with Alt+Tab


; Ctrl+Tab => Win+Tab
$^Tab::
{
    Send "{LWin Down}{Tab}{LWin Up}"
    return
}

; Win+Tab => Ctrl+Tab
$#Tab::
{
    Send "{Ctrl Down}{Tab}{Ctrl Up}"
    return
}
