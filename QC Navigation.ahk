#persistent
#singleInstance force
global ManagementCompany, PropertyName, WinTitle, PropCode



; Steps for opening the client file:
; () Open the QC exception so that the program can get the management company and property name
;		Check that the window is open
; () Set the active directory as U:\Conservice\Client files
; () Navigate to the management company folder
; () Navigate to the property folder
;		Use a GUI to indicate if the prop name or prop code leads the folder
; () Navigate to current year folder
; () Navigate to current month folder
; () Open Bill spreadsheet
;		All spreadsheets should lead with prop code
; () Open Provider Bills (works best if they are in a seperate folder)
; () Activate Yoda and open the community screen
; () Open TCC
; () Open Total Residents Billed
; () Open Stats History


!+y::
	winactivate ahk_exe Conservice.exe
	send ^+c			; Opens the community screen
	send bl80{enter}
return

^!x:: ExitApp


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

; 
