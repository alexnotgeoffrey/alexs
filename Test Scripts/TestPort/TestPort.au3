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

; Create dir for log files
Local $date = @MON & "-" & @MDAY & "-" & @YEAR
DirCreate("C:\Users\ascott\Desktop\regression_" & $date & "\8156_crack_detect\")
DirCreate("C:\Users\ascott\Desktop\regression_" & $date & "\8526_upc\")

; Launch TestPort
Run('C:\Program Files\Test Spectrum\TestPort\TestPort.exe')

; *********************************************** 8156_crack_detect **************************************************

#cs
; Set out location
WinWaitActive("TestPort","")
MouseClick("left",18,43,1)
MouseClick("left",44,86,1)
WinWaitActive("Output Directory Selector","")
Send("C:\Users\ascott\Desktop\regression_05-21-2015\8156_crack_detect\{enter}")

; Select test program
WinWaitActive("TestPort","")
MsgBox(0, "Form Check", "Please check the option Show Matching")
WinWaitClose("Form Check")
MouseClick("left",525,97,1)
WinWaitActive("Select Test Program File","")
Send("C:\Users\ascott\Desktop\Regression TestCases\8156_crack_detect\MSC8156_200_ufc_bb_f8_KLM.xls{enter}")

; Select pattern
WinWaitActive("TestPort","")
MouseClick("left",522,127,1)
WinWaitActive("Select Pattern File(s)","")
Send("C:\Users\ascott\Desktop\Regression TestCases\8156_crack_detect\m8156_crack_detect_m32p00_lvm_dual.atp{enter}")

; Select config
WinWaitActive("TestPort","")
MouseClick("left",520,146,1)
WinWaitActive("Select Configuration File","")
Send("C:\Users\ascott\Desktop\Regression TestCases\8156_crack_detect\m8156_crack_detect_m32p00_lvm_dual.cfg{enter}")

; Load Tree and close next window
WinWaitActive("TestPort","")
MouseClick("left",144,200,1)
WinWaitActive("OIConfig Shop/Job Selector","")
Send("{enter}")

; Select Tests and convert
WinWaitActive("TestPort","")
MouseClick("left",82,293,1)
MouseClick("left",596,69,1)
WinWaitActive("Output Directory Selector","")
Send("{ENTER}")
#ce

; *************************************************** 8526_UPC ********************************************************

; Set out location
WinWaitActive("TestPort","")
MouseClick("left",18,43,1)
MouseClick("left",44,86,1)
WinWaitActive("Output Directory Selector","")
Send("C:\Users\ascott\Desktop\regression_05-21-2015\8526_upc\{enter}")

; Select test program
WinWaitActive("TestPort","")
MouseClick("left",525,97,1)
WinWaitActive("Select Test Program File","")
Send("C:\Users\ascott\Desktop\Regression TestCases\8526_upc\8526_200_upc_aa_a8_12162009.xls{enter}")

; Select pattern
WinWaitActive("TestPort","")
MouseClick("left",522,127,1)
WinWaitActive("Select Pattern File(s)","")
Send("C:\Users\ascott\Desktop\Regression TestCases\8526_upc\dray_sz_plat_fs_chain_20aa.atp{enter}")

; Select config
WinWaitActive("TestPort","")
MouseClick("left",520,146,1)
WinWaitActive("Select Configuration File","")
Send("C:\Users\ascott\Desktop\Regression TestCases\8526_upc\P2020_dray_sz_plat_fs_chain_20aa_4jan10.cfg{enter}")

; Load Tree and close next window
WinWaitActive("TestPort","")
MouseClick("left",144,200,1)
WinWaitActive("OIConfig Shop/Job Selector","")
Send("mpc8526rev20prb_room, probe{enter}")

_WinWaitActivate("TestPort","")
MouseClick("left",58,256,1)
MouseClick("left",584,60,1)
_WinWaitActivate("Output Directory Selector","")
Send("{ENTER}")
_WinWaitActivate("TestPort","")
MouseClick("left",39,260,1)
MouseClick("left",64,273,1)
MouseClick("left",599,64,1)
_WinWaitActivate("Output Directory Selector","")
Send("{ENTER}")

MsgBox(0, "TestPort Test", "Testing Done.")
#endregion --- Au3Recorder generated code End ---
