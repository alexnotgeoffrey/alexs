[ ] const wDynamicMainWindow = VectorPort
[ ] 
[-] window JFrame VectorPort
	[ ] locator "/JFrame[@caption='VectorPort']"
	[ ] 
	[ ] // The working directory of the application when it is invoked
	[ ] const sDir = "%ProgramFiles%\Test Spectrum\VectorPort"
	[ ] 
	[ ] // The command line used to invoke the application
	[ ] const sCmdLine = "%ProgramFiles%\Test Spectrum\VectorPort\jre\bin\java.exe -Xmx512000000 -classpath ""%ProgramFiles%\Test Spectrum\VectorPort\VectorPort.jar;%ProgramFiles%\Test Spectrum\VectorPort\poi-3.8-20120326.jar;%ProgramFiles%\Test Spectrum\VectorPort\lax.jar;"" com.zerog.lax.LAX ""C:/Program Files/Test Spectrum/VectorPort/VectorPort.lax"" ""C:/Users/ascott/AppData/Local/Temp/lax39C.tmp"""
	[ ] 
	[ ] // The list of windows the recovery system is to leave open
	[ ] // const lwLeaveOpenWindows = {?}
	[ ] // const lsLeaveOpenLocators = {?}
	[+] JComboBox Reader
		[ ] locator "@priorlabel='Reader'"
	[+] JComboBox Writer
		[ ] locator "@priorlabel='Writer'"
	[+] JCheckBox DisplaySignalEditor
		[ ] locator "Display Signal Editor"
	[+] JCheckBox DisplayTimesetEditor
		[ ] locator "Display Timeset Editor"
	[+] JCheckBox RepeatCompression
		[ ] locator "Repeat Compression"
	[+] JButton StopConverter
		[ ] locator "Stop Converter"
	[+] JButton ClearOutput
		[ ] locator "Clear Output"
[ ] 
[ ] 
