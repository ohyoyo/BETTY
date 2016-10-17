#title       : Plus ou moins
#description : The user have to find a random number between 0 and 100, at each try, betty will reply if the number is + or -
#author      : Matthieu Vignolle & Yoann Di Maria
#date 	     : 20161016
#version     : 0.1
#usage       : sh plusoumoins.sh
#notes 	     : Only working on Unix machines
#=================================================

# $b this variable is for syntax, it will reply "Betty :"

counting=0
min=0
max=100
n=$[($RANDOM % ($[$max - $min] + 1)) + $min] # this line stand for create a random number between 0 & 100 in $n

# this function first add +1 to the counting then it will check what the user say. he can only write number.
# then the number will be compared to $n. When the user found $n, $counting will reply how many time the users tried to guess

plusoumoins () {
		counting=$[ counting + 1 ]
		re='^[0-9]+$'

		if ! [[ $1 =~ $re ]] ; then
			echo $(trsText "plusoumoinsnonomber")
		else
				if [ $1 -lt $n ] ; then
					echo $(trsText "plusoumoinsisplus")

				elif [ $1 -gt $n ] ; then
					echo $(trsText "plusoumoinsismoins")

				else
					echo $(trsText "plusoumoinswin")
						echo "Score : $counting"
				fi
		fi
}


echo $(trsText "plusoumoinsplaygame")
read ftextgame
if [[ "$(trsAccent $(lowerCase "$ftextgame"))" =~ $regexyes ]] ; then
	echo $(trsText "plusoumoinsrule")
	read reglegame
	if [[ "$(trsAccent $(lowerCase "$reglegame"))" =~ $regexno ]] ; then
		echo $(trsText "plusoumoinsrulego")

	fi
	echo $(trsText "plusoumoinsstart")

	while [ "$numbergame" != "$n" ] # if the user don't find $n then he have another shot and this will loop over and over
	do
		read numbergame
  			plusoumoins $numbergame

	done

elif [[ "$(trsAccent $(lowerCase "$ftextgame"))" =~ $regexno ]] ; then
echo $(trsText "plusoumoinsdmg")
fi
