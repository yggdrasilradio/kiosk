
	' Mount disks via DriveWire
	def dw = 3
	drive 0, #0
	drive 1, #3
	
	' Reset machine on BREAK
	on brk goto 1000

	' Disable cursor
	include "disable.bas"

	' Set video mode for kiosk menu
	rgb
	width 80

	' Set colors for 32 column loading screen
	palette 12, 63	' white text
	palette 13, 0 	' black background

	' Set colors for 80 column screen
	palette 0, 0  	' black background
	palette 8, 63	' white text
	palette 9, 22	' green text
	palette 10, 27	' cyan text

	' Clear screen
	cls 1

	' Kiosk menu header
	attr 1, 0
	print "Rick Adams Laboratories, Third Planet from the Sun";
	'print "                CocoFEST! 2022"
	attr 0, 0

	' Read and display menu items
	restore
	i = 64
	x = 2
	y = 0
20	read a$
	if a$ <> "END" then
		i = i + 1
		gosub 3000
		locate x, y
		attr 0, 0
		print chr$(i);
		print " ";
		attr 2, 0	
		print a$
		attr 0, 0
		goto 20
	end if

	' Cocofest announcements
	'include "cocofest.bas"

	attr 1, 0
	locate 0, 23
	print "Make a selection (press BREAK to return to this menu)";

	' Wait for key
30	a$ = inkey$
	if a$ = "" then
		goto 30
	end if

	' Load and run selected program
	i = 65
	include "omnistar.bas"
	include "bombthreat.bas"
	include "shanghai.bas"
	include "temple.bas"
	include "cocole.bas"
	include "dmaze.bas"
	include "example.bas"
	include "os9eou.bas"
	include "demo.bas"
	include "game.bas"
	include "chart.bas"

	'include "tnwar.bas"

	include "cocosdc.bas"
	include "scroll.bas"
	include "pattern.bas"
	include "lissa.bas"
	include "exit.bas"

	data "END"

	' Illegal selection
	goto 30

	' Reset the machine
1000	poke &H71, 0	' Force reset
	exec &H8C1B

	' Display loading screen
2000	poke &HFFD8, 0	' Normal clock speed
	width 32
	cls 1
	print "LOADING..."
	return

	' Position menu items
3000	if i = 73 then
		x = 40
		y = 0
	end if
	y = y + 2
	return
