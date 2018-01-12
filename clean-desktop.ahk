#NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance force
#Persistent

try {
  FileDelete, C:\Users\Public\Desktop\*
} catch e {
  MsgBox, An exception was thrown!`nSpecifically: %e%
  Exit
}

Sleep 30000

Reload
