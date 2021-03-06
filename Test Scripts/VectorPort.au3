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

_WinWaitActivate("VectorPort","")
MouseMove(236,100)
MouseDown("left")
MouseMove(236,101)
MouseUp("left")
MouseClick("left",207,130,1)
MouseClick("left",231,101,1)
MouseClick("left",207,116,1)
MouseClick("left",230,119,1)
MouseClick("left",201,152,1)
MouseClick("left",233,123,1)
MouseClick("left",220,139,1)
MouseClick("left",37,152,1)
MouseClick("left",35,152,1)
MouseClick("left",33,175,1)
MouseClick("left",33,175,1)
MouseClick("left",36,254,1)
MouseClick("left",36,254,1)
MouseClick("left",588,65,1)
MouseClick("left",662,62,1)
#endregion --- Au3Recorder generated code End ---
