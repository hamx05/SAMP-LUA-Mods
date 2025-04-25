#IfWinActive GTA:SA:MP
#MaxHotkeysPerInterval 9999
----------------------------------------------------------------------------------------------------------------
-------------------------------------------- Alt + KEYPAD BINDS -----=------------------------------------------
!o::
SendInput tYou have been casefiled by the Federal Bureau of Investigation.{enter}
Sleep 2000
SendInput tThis casefile includes your personal details and evidence linking you to criminal activities.{enter}
Sleep 2000
SendInput tHence, an agent from the Criminal Investigation Division is arresting you.{enter}
Sleep 2000
SendInput tIn case of any uncertainties, your legal counsel can examine your casefile on our website ((FORUMS)).{enter}
return

NumpadSub::
sleep 50
sendinput t/deploycade 2{enter}
return

NumpadAdd::
sleep 50
sendinput t/deployspikes{enter}
return

NumpadMult::
sleep 50
sendinput t/deploycade{enter}
return

NumpadDiv::
Sleep 50
SendInput t/destroyspike {left 0}
return

!z::
sleep 50
sendinput t/usepot{enter}
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
Sendinput t/s ARES{!} PUT YOUR HANDS UP IN THE AIR RIGHT FUCKING NOW{!} ((/handsup)){enter}
return

!m::
sleep 50
Sendinput t/m This is ARES - Pull over your vehicle to the right side of road.{enter}
Sendinput t/m Stop the engine and remain calm and comply with my orders and you will not be harmed.{enter}
return

!e::
sleep 50
SendInput t/gate{enter}
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
sendinput t/d Pop a beacon, please.{enter}
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
sendinput t/d Responding shortly{!}{enter}
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
sendinput t/d Any active situation?{enter}
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
SendInput t/d Enroute to your beacon{!}{enter}
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

:?:/mdcyes::

sleep 1000
sendinput t/me moves towards his car - as he pulls the driver door.{enter}
sleep 2000
sendinput t/cardoor 1{enter}
sleep 4000
sendinput t/me bends down as he pushes himself in the car - pulling the door closed.{enter}
sleep 4000
sendinput t/do I would now be sitting on the driver's seat.{Enter}
sleep 4000
sendinput t/me shifts to his right - logging on MDC as he then runs a check on the licenses.{enter}
sleep 4000
sendinput t/do Driver's licenses passed.{enter}
sleep 4000
sendinput t/me logs off the MDC - reaches his hands to the lock - unlocking the door.{enter}
sleep 4000
sendinput t/me slowly gets outta car - shutting the door behind him as he then moves towards them.{enter}
sleep 100
return

:?:/mdcno::
sleep 1000
sendinput t/me moves towards his car - as he pulls the driver door.{enter}
sleep 4000
sendinput t/cardoor 1{enter}
sleep 4000
sendinput t/me bends down as he pushes himself in the car - pulling the door closed.{enter}
sleep 4000
sendinput t/do I would now be sitting on the driver's seat.{Enter}
sleep 4000
sendinput t/me shifts to his right - logging on MDC as he then runs a check on the licenses.{enter}
sleep 4000
sendinput t/do Driver's license not passed.{enter}
sleep 4000
sendinput t/me logs off the MDC - reaches his hands to the lock - unlocking the door.{enter}
sleep 4000
sendinput t/me slowly gets outta car - shutting the door behind him as he then moves towards them.{enter}
sleep 100