#NoEnv
#persistent
#singleInstance force 		; Kills the restart dialog box when refreshing the script.
SetNumLockState, AlwaysOn 	; Sets NumLock to always be on

; HotKeys
;--------------------------------------------
;-----------------------------------------------------------
#ifWinActive Conservice WebEx Enterprise Site - Google Chrome ; Makes it so that this key combo only works on WebEx in Chrome
^+m::  ; control+shift+m - For Web-Ex meetings
	Send, Eric G{tab}egreenhalgh@conservice.com{tab}{enter}
Return
	
#ifWinActive									;Active under any window
F6:: winactivate ahk_exe Conservice.exe			;activates Yoda
F7:: winactivate ahk_exe EXCEL.EXE				;activates excel
F8:: winactivate ahk_exe FoxitReader.exe		;activates foxit
F9:: winactivate ahk_exe Explorer.EXE			;Activates Windows Explorer
!+s:: send, U:\User files\Eric Greenhalgh\Team Lead\Trust but Verify\Snapshots\2018{enter}			;Alt+shift+S
!+p:: send, U:\User files\Eric Greenhalgh\Team Lead\Trust but Verify\Phones\2018{enter}				;Alt+shift+p
!+q:: send, U:\User files\Eric Greenhalgh\Team Lead\Trust but Verify\QC Bin\2018{enter}				;Alt+shift+q
!+b:: send, U:\User files\Eric Greenhalgh\Team Lead\Trust but Verify\Billing Progress\2018{enter}	;Alt+shift+b

; General HotStrings
;--------------------------------------------
;-----------------------------------------------------------
#ifWinActive ; Resets so all keys below work in any window
::rccu::There are a lot of rent charges at this community that could be cleaned up.  During prep time, let's look at getting the extras removed.
::furu::There are very few units not ramped up. Please follow up with property to see if we can complete the ramp.

; TL/ATL HotStrings
;--------------------------------------------
;-----------------------------------------------------------
#ifWinActive
::upbm::Updated bill message for xx
::upli::Updated line items for xx
::upro::Updated provider for xx
::bsru::Updated rampup //methodChange// to MI/LR as of /date/
::bsrs::Updated to new rate sheet

; QC HotStrings
;--------------------------------------------
;-----------------------------------------------------------
#ifWinActive
::vfbrs::Verified bills, reports, and spreadsheet.
::vfpb::Verified pre-bill corrections.
::vfra::Verified reminders and alerts.
::vfpbn::Verified pre-bill notes.
::vfut::Verified UA and TCC.
::vfoc::Verified units outside cycle.
::vfex1::Verified charges, export data, and RRD tables.
::vfli::Verified line item adjustments.
::vfpu::Verified provider updates.
::s1cl::Verified accounts closed and all bills utilized.
::s1nb::Verified accounts not billed by Conservice.
::s1op::Verified accounts opened, added to spreadsheet, and billed appropriately.
::a14bm::Verified bill message updates.
::a14li::Verified line item adjustments.
::a14ru::Verified rates updated and charges correct.
::a2nr::Verified units not ramped.
::a2oc::Verified units outside cycle.
::vfcd::Verified cycle dates and proration as needed.
::vfre::Verified reads and estimates.
::vfu8::Verified bills and fluctuations.
::a28ru::Verified updated to new rates and QC/project complete.
::a28ro::Rates project opened but no sheet uploaded at this time.
::vfr2::Billable to residents is $xx, penetration is xx%, expected expense based on penetration is $xx, amount lost to proration is $xx, when this is all factored in amount of expected reocvered is xx%
::ramcom::Verifeid ramp up complete. Removed ramps from bill setup.
::a14bmc::Ramping //xx// to MI/LR as of x/x/x. Verified contract change tracker and documentation, fee screen, bill setup, property options and RRD tables, community screen, lease charges, template tenant, reminders and CSR alerts.
::r9q::Submetered consumption is xx gallons/unit, vs provider consumption which is xx gallons/unit.
::apq::Approved{!} Remember to check QC notes.
::aphb::Approved HB - 


