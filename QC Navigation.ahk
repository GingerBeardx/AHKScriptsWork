#persistent
#singleInstance force
global ManagementCompany, PropertyName, WinTitle, PropCode

getPropertyInfo() {
	WinGetTitle, fullTitle, A
	MsgBox, 0, Property Text, %fullTitle%, 2
	ManagementCompany := SubStr(fullTitle, InStr(fullTitle, "(")+1, InStr(fullTitle, ")")-InStr(fullTitle, "(")-1)
	PropCode := SubStr(fullTitle, InStr(fullTitle, ":")+2, InStr(fullTitle, "-",,,2)-InStr(fullTitle, ":")-2)
	PropertyName := SubStr(fullTitle, InStr(fullTitle, "-",,,2)+2, InStr(fullTitle, "(")-InStr(fullTitle, "-",,,2)-2)
}

openYodaProp() {
	winactivate ahk_exe Conservice.exe
	send ^+c			; Opens the community screen
	send %PropCode%{enter}
}

; Steps for opening the client file:
; (x) Open the QC exception so that the program can get the management company and property name
;		Check that the window is open and get the necessary info
; () Set the active directory as U:\Conservice\Client files
; () Navigate to the management company folder
; () Navigate to the property folder
;		Use a GUI to indicate if the prop name or prop code leads the folder
; () Navigate to current year folder
; () Navigate to current month folder
; () Open Bill spreadsheet
;		All spreadsheets should lead with prop code
; () Open Provider Bills (works best if they are in a seperate folder)
; (x) Activate Yoda and open the community screen
; () Open TCC
; () Open Total Residents Billed
; () Open Stats History
; () Close Excel and Foxit Files


!+y::
	InputBox, PropCode,, Please enter prop code,, 200,,
	openYodaProp()
return

#g::
If WinActive("Exception Note") {
	getPropertyInfo()
	openYodaProp()
	Return
} Else {
	MsgBox,0, Select Correct Window, Make sure the QC Exception is open and active
	Return
}

^!x:: 
	MsgBox, 0,, Toodles, 2
ExitApp



; Ctrl Shift C - Opens community Screen in Yoda
; Ctrl Shift S - Opens system bill search in Yoda
; Ctrl Shift R - REO Communities
; CTrl Shift [ - Opens utility providers
; Ctrl Shift S - Opens system bill search
; Ctrl Shift B - Opens REO Billing
; Ctrl Shift M - Opens Management Companies
; While Community screen open Alt R will open the resident screen
; While Community screen open Alt U will open the unit screen
; While Community screen open Alt C will put the focus on the code cell
