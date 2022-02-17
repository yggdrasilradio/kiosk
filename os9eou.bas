	data "Boot 6309 EOU OS9"
	if a$ = chr$(i) then
		gosub 2000
		drive 0, "63SDC.VHD"
		drive 1, "COCODLE.DSK"
		dos
	end if
	i = i + 1
