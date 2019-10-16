; Switch between windows of same application
LAlt & `::    ; Last window
WinGetClass, ActiveClass, A
WinActivateBottom, ahk_class %ActiveClass%
return

; Mac Style tab switching
!+[::Send ^{PgUp}
!+]::Send ^{PgDn}