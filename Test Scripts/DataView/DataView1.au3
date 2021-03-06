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

Local $exe = FileOpenDialog("Select DataView Parent Directory", "C:\", "All (*.*)")

Local $pos = StringInStr($exe, "dataview.exe")
Local $path = StringLeft($exe, $pos-1)

Run($exe)
WinWaitActive("DataView", "")

Do

   ; Open demo1_finaltest1
   MouseClick("left",758,392,1)
   MouseClick("left",240,273,1)
   WinWaitActive("Open","Namespace Tree Contr")
   Send($path & "demo\demo1_finaltest1.std{enter}")

   ; Navigate Tabe demo1_finaltest1
   WinWaitActive("DataView","")
   MouseClick("left",705,110,1)
   MouseClick("left",861,115,2)
   MouseClick("left",512,82,1)
   MouseClick("left",600,81,1)
   MouseClick("left",693,78,1)
   MouseClick("left",764,76,1)
   MouseClick("left",832,76,1)
   MouseClick("left",926,79,1)
   MouseClick("left",986,79,1)

   ; Open demo1_finaltest2
   MouseClick("left",442,80,1)
   MouseClick("left",121,275,1)
   WinWaitActive("Open","Namespace Tree Contr")
   Send($path & "demo\demo1_finaltest2.std{enter}")

   ; Navigate tabs demo1_finaltest2
   WinWaitActive("DataView","")
   MouseClick("left",513,84,1)
   MouseClick("left",595,84,1)
   MouseClick("left",688,75,1)
   MouseClick("left",742,80,1)
   MouseClick("left",742,80,1)
   MouseClick("left",822,79,1)
   MouseClick("left",915,76,1)
   MouseClick("left",987,77,1)
   MouseClick("left",393,83,1)
   MouseClick("left",393,83,1)
   MouseClick("left",711,113,1)
   MouseClick("left",899,110,1)

   ; Open demo1_finaltest3
   WinWaitActive("DataView","")
   MouseClick("left",145,279,1)
   WinWaitActive("Open","Namespace Tree Contr")
   Send($path & "demo\demo1_finaltest3.std{enter}")

   ; Navigate tabs demo1_finaltest3
   WinWaitActive("DataView","")
   MouseClick("left",530,82,1)
   MouseClick("left",611,79,1)
   MouseClick("left",677,78,1)
   MouseClick("left",760,78,1)
   MouseClick("left",854,78,1)
   MouseClick("left",894,78,1)
   MouseClick("left",894,78,1)
   MouseClick("left",999,78,1)
   MouseClick("left",437,80,1)
   MouseClick("left",733,117,1)
   MouseClick("left",869,115,1)

   ; Open demo1_finaltest4
   WinWaitActive("DataView","")
   MouseClick("left",223,274,1)
   WinWaitActive("Open","Namespace Tree Contr")
   Send($path & "demo\demo1_finaltest4.std{enter}")

   ; Navigate tabs demo1_finaltest4
   WinWaitActive("DataView","")
   MouseClick("left",716,114,1)
   MouseClick("left",872,109,1)
   MouseClick("left",542,74,1)
   MouseClick("left",585,82,1)
   MouseClick("left",680,82,1)
   MouseClick("left",758,82,1)
   MouseClick("left",867,83,1)
   MouseClick("left",908,79,1)
   MouseClick("left",980,79,1)
   MouseClick("left",421,82,1)

   ; Open demo1_finaltest5
   WinWaitActive("DataView","")
   MouseClick("left",173,278,1)
   WinWaitActive("Open","Namespace Tree Contr")
   Send($path & "demo\demo1_finaltest5.std{ENTER}")

   ; Navigate tabs demo1_finaltest5
   WinWaitActive("DataView","")
   MouseClick("left",736,117,1)
   MouseClick("left",870,107,1)
   MouseClick("left",493,77,1)
   MouseClick("left",493,77,1)
   MouseClick("left",631,77,1)
   MouseClick("left",686,82,1)
   MouseClick("left",736,82,1)
   MouseClick("left",818,80,1)
   MouseClick("left",818,80,1)
   MouseClick("left",928,78,1)
   MouseClick("left",1001,74,1)
   MouseClick("left",414,82,1)

   ; Open demo1_finaltest6
   WinWaitActive("DataView","")
   MouseClick("left",180,272,1)
   WinWaitActive("Open","Namespace Tree Contr")
   Send($path & "demo\demo1_finaltest6.std{ENTER}")

   ; Navigate tabs demo1_finaltest6
   WinWaitActive("DataView","")
   MouseClick("left",716,107,1)
   MouseClick("left",852,109,1)
   MouseClick("left",498,80,1)
   MouseClick("left",624,81,1)
   MouseClick("left",687,81,1)
   MouseClick("left",737,79,1)
   MouseClick("left",832,82,1)
   MouseClick("left",949,80,1)
   MouseClick("left",1004,80,1)
   MouseClick("left",424,73,1)
#ce
   Local $repeat = MsgBox(4, "DataView Test", "Re-run tests.")

Until $repeat = 7

MsgBox(0, "DataView Test", "Testing Done")
#endregion --- Au3Recorder generated code End ---
