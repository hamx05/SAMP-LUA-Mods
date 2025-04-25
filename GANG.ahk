#IfWinActive GTA:SA:MP
#MaxHotkeysPerInterval 9999
----------------------------------------------------------------------------------------------------------------
-------------------------------------------- Alt + KEYPAD BINDS -----=------------------------------------------
!z::
sleep 50
sendinput t/usepot{enter}
return

!p::
sleep 100
sendinput t/getcrate{enter}
sleep 50
sendinput tcrack{enter}
sleep 100
return

End::
sleep 200
sendinput t/wanted{enter}
sleep 100
return

F2::
sleep 50
sendinput t/lock{enter}
sleep 20
return

!e::
sleep 50
SendInput t/faid{enter}
return

!c::
sleep 50
SendInput t/tcap{Enter}
Return

!v::
sleep 50
SendInput t/vest  200{left 4}
Return

!x::
sleep 50
SendInput t/usecrack{enter}
return

!q::
sleep 50
SendInput t/takepills{enter}
return

!h::
sleep 50
SendInput t/frisk{space}
Return

!r::
sleep 50
Sendinput t/accept bodyguard{enter}
return

RCtrl::
sleep 50
SendInput t/nos{enter}
Return

------------------------------------- TYPING BINDS -------------------------------------------------
------------------------------------ General Commands -----------------------------------
:?:t/rb::
sleep 100
sendinput t/d Rebeacon please.{enter}
sleep 50
return

:?:t/ct::
sleep 200
sendinput t/car trunk{enter}
sleep 150
return

:?:t/tb::
sleep 150
sendinput t/trunkbalance{enter}
sleep 150
return

:?:t/pab::
sleep 150
sendinput t/d Pop a beacon please.{enter}
sleep 150
return

:?:t/epb::
sleep 150
sendinput t/exitpaintball{enter}
sleep 150
return

:?:t/up::
sleep 150
sendinput t/usepot{enter}
sleep 150
return

:?:t/uc::
sleep 150
sendinput t/usecrack{enter}
sleep 150
return

:?:t/hb::
sleep 200
sendinput t/hbalance{enter}
sleep 200
return

:?:t/cw::
sleep 100
sendinput t/car window{enter}
sleep 100
return

:?:t/yes::
sleep 100
sendinput t/fbackup{enter}
sleep 50
return

:?:t/no::
sleep 100
sendinput t/nobackup{enter}
sleep 50
return

:?:t/rs::
sleep 100
sendinput t/pr Responding shortly{!}{enter}
sleep 100
return

:?:t/ss::
sleep 250
sendinput t/stats{enter}
sleep 100
return

:?:t/wt::
sleep 250
sendinput t/wanted{enter}
sleep 100
return

:?:t/pf::
sleep 250
sendinput t/pointinfo{enter}
sleep 100
return

:?:t/nt::
sleep 250
sendinput t/nextturf{enter}
sleep 100
return

:?:t/np::
sleep 250
sendinput t/nextpoint{enter}
sleep 100
return

:?:t/sr::
sleep 250
sendinput t/setradio{enter}
sleep 100
return

:?:t/hm::
sleep 250
sendinput t/headmove{enter}
sleep 100
return

:?:t/fmv::
sleep 250
sendinput t/fixmyvw{enter}
sleep 100
return

:?:t/tf::
sleep 250
sendinput t/turfinfo{enter}
sleep 100
return

:?:t/mm::
sleep 250
sendinput t/members{enter}
sleep 100
return

:?:t/ch::
sleep 250
sendinput t/car hood{enter}
sleep 100
return


:?:t/ce::
sleep 250
sendinput t/car engine{enter}
sleep 100
return

:?:t/ad::
sleep 250
sendinput t/accept death{enter}
sleep 100
return

:?:t/aw::
sleep 100
SendInput t/accept weapon{Enter}
sleep 100
return

:?:t/apb::
sleep 250
SendInput t/accept paintball{Enter}
sleep 100
return

:?:t/sc::
sleep 250
sendinput t/signcheck{enter}
sleep 100
return

:?:/vc::
sleep 50
sendinput /vcheck{enter}
sleep 20
return

:?:/hl::
sleep 50
sendinput /houselock{enter}
return

:?:/aas::
sleep 300
sendinput t/pr Any active situation?{enter}
sleep 20
return


:?:/omw::
sleep 500
SendInput t/pr Enroute to your beacon{!}{enter}
sleep 20
return

:?:/checkid::
sleep 1000
SendInput t/mdc{enter}
sleep 500
SendInput {down}
sleep 200
SendInput {enter}
sleep 200
SendInput {enter}
sleep 150
return

:?:/faidme::
sleep 250
sendinput t/me takes out a morphine srynge and injects it.{enter}
sendinput t/faid{enter}
return

--------------------------- Set Suspect ----------------------
:?:/sus::
sleep 500
SendInput t/id {left 0}
Input suspect,C V, {Enter}
exit
Home::
sendinput t/find %suspect%{enter}
return
-------------------------- Jobs ------------------------------
:?:/job1::
Sendinput /leavejob 1{enter}
SendInput t/join{enter}
return
:?:/job2::
Sendinput /leavejob 2{enter}
Sendinput t/join{enter}
return
