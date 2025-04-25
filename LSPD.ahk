#IfWinActive GTA:SA:MP
#MaxHotkeysPerInterval 9999
----------------------------------------------------------------------------------------------------------------
-------------------------------------------- Alt + KEYPAD BINDS -----=------------------------------------------
!z::
sleep 50
sendinput t/badge{enter}
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

!y::
sleep 50
Sendinput t/s LSPD! Hands in the air right now{enter}
return

!e::
sleep 50
SendInput t/gate{enter}
return

!c::
sleep 50
SendInput t/m LSPD{!} Clear the Road, This is an EMERGENCY{!} {Enter}
Return

!m::
sleep 50
Sendinput t/m LSPD{!} Pull over to the side of the road now{!}{enter}
sendinput t/m Remain seated and turn your car engine off{!} ((/car engine)){enter}
return

!b::
sleep 50
Sendinput t/dropweapon mace{enter}
sendinput t/dropweapon nitestick{enter}
return

!v::
sleep 50
SendInput t/vest  200{left 4}
Return



!q::
sleep 50
SendInput t/tazer{enter}
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
---------------------------------- ALT + NUMPAD BINDS ---------------------------------------
!1::
sleep 50
SendInput t/su  Posession of controlled substances{left 35}
Return
!2::
sleep 50
SendInput t/su  Posession of illegal firearms{left 30}
Return
!3::
sleep 50
SendInput t/su  Attempted murder{left 17}
Return
!4::
sleep 50
SendInput t/su  Discharge of firearm in public{left 31}
Return
!5::
sleep 50
SendInput t/su  Resisting a LEO{left 16}
Return
!6::
sleep 50
SendInput t/su  Reckless driving{left 17}
Return
!7::
sleep 50
SendInput t/su  Aidding and Abetting{left 21}
Return
!8::
sleep 50
SendInput t/su  Speeding{left 9}
Return
!9::
sleep 50
SendInput t/su  Trespassing{left 12}
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
sendinput t/d Drop beacon.{enter}
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
sendinput t/backup{enter}
sleep 50
return
:?:t/no::
sleep 100
sendinput t/nobackup{enter}
sleep 50
return
:?:t/rs::
sleep 100
sendinput t/d Responding, 10-76{!}{enter}
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
:?:/lc::
sleep 200
sendinput t/locker{enter}
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
sendinput t/d Anything going on?{enter}
sleep 20
return
:?:/bg::
sleep 500
sendinput t/badge{enter}
sleep 200
return

:?:/mrights::
sleep 2000
SendInput tYou have the right to remain silent when questioned.{enter}
sleep 2000
SendInput tAnything you say or do may be used against you in a court of law.{enter}
sleep 2000
SendInput tYou have the right to an attorney.{enter}
sleep 2000
SendInput tIf you cannot afford an attorney, one will be appointed for you.
sleep 2000
SendInput tDo you understand these rights as I have read them to you?
sleep 500
return
:?:/omw::
sleep 500
SendInput t/d Enroute{!}{enter}
sleep 20
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
