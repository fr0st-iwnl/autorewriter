Gui, Add, Text,, -----------------------------------------Key Delay----------------------------------------
Gui, Add, Edit, w300 vKeyDelay, 100
Gui, Add, Text,, ---------------------------------------Auto Rewriter----------------------------------------
Gui, Add, Edit, R10 w300 vAutoRewrite
Gui, Add, Text,,           F4 To Auto Rewrite
Gui, Add, Text,,         Press K To Suspend/Resume
Gui, Add, Text,,         Press L To Exit the app.
Gui, Add, Text,,           Edited by fr0st-iwnl
Gui, Show
F4::
!F4::
Gui, Submit, Nohide
AutoRewrite := RegExReplace(AutoRewrite, "n|r|/") ; Remove Stuff
X := 1
while (X:=RegExMatch(AutoRewrite, "U)([.*]|.)",Keys, X))
{ 
 X+=StrLen(Keys)
 Keys := Trim(Keys, "[]")
 SendInput % Keys
 Sleep, %KeyDelay%
}
return


l::ExitApp

k::

Pause

Suspend

return

GuiClose:
 ExitApp