	data "Exit to DECB"
	if a$ = chr$(i) then
		attr 0, 0
		width 32
		rgb
		cls
		poke &hffd8, 0
		new
	end if
	i = i + 1
