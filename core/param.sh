if [ ! -f $f_session ] ; then
	touch $f_session
	roundgo=1

elif [ -f $f_session ] ; then
	fuser=$(userid "user")
	if [ "$fuser" != "$user" ] ; then
		roundgo=1
	else
		roundgo=2
	fi
fi
