	data "SGBASIC demo"
	if a$ = chr$(i) then
		gosub 2000
		drive 1
		run "SGBASIC.BAS"
	end if
	i = i + 1
