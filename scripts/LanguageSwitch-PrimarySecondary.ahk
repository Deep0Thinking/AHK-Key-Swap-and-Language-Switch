#Requires AutoHotkey v2.0


; - CapsLock sets PRIMARY_KLID
; - Shift+CapsLock sets SECONDARY_KLID

; Keyboard Layout IDs (You may find the KLIDs at https://learn.microsoft.com/en-us/globalization/windows-keyboard-layouts)
PRIMARY_KLID   := "00000409" ; English (US)
SECONDARY_KLID := "00000804" ; Chinese (Simplified) - US

; Win32 constants
KLF_ACTIVATE              := 0x1  ; Activate the layout for the current thread.
KLF_SUBSTITUTE_OK         := 0x2  ; Allow substitution of a similar layout.
WM_INPUTLANGCHANGEREQUEST := 0x50 ; Windows message to request an input language change.

SetLayout(klid) {
    ; Load the desired KLID into the system and get its HKL.
    hkl := DllCall("LoadKeyboardLayout", "Str", klid, "UInt", KLF_ACTIVATE | KLF_SUBSTITUTE_OK, "Ptr")

    ; Send a message to the active window ('A') requesting it to use the corresponding keyboard layout.
    PostMessage(WM_INPUTLANGCHANGEREQUEST, 0, hkl,, "A")
}

; CapsLock = primary
CapsLock::SetLayout(PRIMARY_KLID)

; Shift+CapsLock = secondary
+CapsLock::SetLayout(SECONDARY_KLID)
