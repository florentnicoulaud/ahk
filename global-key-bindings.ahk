#NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ctrl-q to close window
^q::
	Send !{F4}
	Return

; alt-t to toggle maximize window
!t::
   WinGet MX, MinMax, A
   If MX
        WinRestore A
   Else WinMaximize A
   Return

; ctrl-alt-n to open a terminal in your home directory
^!n::
	SplitPath, A_Desktop,, vDirHome
	Run, cmder.exe, % vDirHome
	Return

; ctrl-alt-e to open the run command box
^!e::
	Send #r
	Return
