#Requires AutoHotkey v2.0


; Bottom-left keys physical layout (from left to right): LWin, LAlt, LCtrl.
; - CapsLock: switch input language
; - Shift+CapsLock: toggle real Caps Lock
; - Remaps: LCtrl→LWin, LAlt→LCtrl, LWin→LAlt
; - Swaps Ctrl+Tab with Alt+Tab (After Remaps) to trigger window switching.


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

; Ctrl+Tab => Alt+Tab (switch windows)
$^Tab::
{
    Send "{Alt Down}{Tab}{Alt Up}"
    return
}

; Alt+Tab => Win+Tab (Task View)
$!Tab::
{
    Send "{Win Down}{Tab}{Win Up}"
    return
}