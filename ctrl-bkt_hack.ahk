; this is simple auothotkey script which is making possible to use 
; Ctrl-[ in gvim under windows while switched to non english layout
; not even need langmap, since it's somehow not working for ^[ anyway
; to get class name for ahk_class r-click on script icon in win-tray, run win-spy and then focus on window you need
;
#IfWinActive ahk_class Vim
^SC01A::   ; ctrl-[ in both layouts
Send {Escape}
return
#IfWinActive
