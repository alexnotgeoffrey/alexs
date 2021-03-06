#region --- Au3Recorder generated code Start (v3.3.9.5 KeyboardLayout=00000409)  ---

#region --- Internal functions Au3Recorder Start ---
Func _Au3RecordSetup()
Opt('WinWaitDelay',100)
Opt('WinDetectHiddenText',1)
Opt('MouseCoordMode',0)
Local $aResult = DllCall('User32.dll', 'int', 'GetKeyboardLayoutNameW', 'wstr', '')
If $aResult[1] <> '00000409' Then
  MsgBox(64, 'Warning', 'Recording has been done under a different Keyboard layout' & @CRLF & '(00000409->' & $aResult[1] & ')')
EndIf

EndFunc

Func _WinWaitActivate($title,$text,$timeout=0)
	WinWait($title,$text,$timeout)
	If Not WinActive($title,$text) Then WinActivate($title,$text)
	WinWaitActive($title,$text,$timeout)
EndFunc

_AU3RecordSetup()
#endregion --- Internal functions Au3Recorder End ---


Run('C:\Program Files\Test Spectrum\Dataview\dataview.exe')

Sleep(10000)

_WinWaitActivate("DataView","")
MouseClick("left",761,400,1)
MouseClick("left",352,49,1)
_WinWaitActivate("Open","Namespace Tree Contr")
MouseClick("left",232,163,1)
MouseClick("left",788,502,1)
_WinWaitActivate("DataView","")
MouseClick("left",62,473,1)
MouseClick("left",531,81,1)
MouseClick("left",606,82,1)
MouseClick("left",681,82,1)
_WinWaitActivate("Error","Analyze Gradient, No")
MouseClick("left",428,131,1)
_WinWaitActivate("DataView","")
MouseClick("left",751,81,1)
MouseClick("left",854,87,1)
MouseClick("left",918,87,1)
MouseClick("left",1015,82,1)
#endregion --- Au3Recorder generated code End ---
