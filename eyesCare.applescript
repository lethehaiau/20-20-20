on idle
	set mypassword to "your password here"
	display notification "❤️" with title "Keep calm and Care your Eyes 👀 "
	delay 5
	do shell script ("pmset displaysleepnow") password mypassword with administrator privileges
	set wakeup_time to do shell script ("date '-v+20S' '+%D %T'")
	#display dialog "'wakeup_time'"
	do shell script ("pmset schedule wake '" & wakeup_time & "'") password mypassword with administrator privileges
	return 1200
end idle