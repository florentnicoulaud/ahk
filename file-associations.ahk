#NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance force
#Persistent

; Get Home directory
SplitPath, A_Desktop,, vDirHome

; Call program with conf file found in user's home directory
try {
  Run, SetUserFTA %vDirHome%\file-associations.conf,, Hide
} catch e {
  MsgBox, An exception was thrown!`nSpecifically: %e%
  Exit
}

Sleep 60000

Reload
