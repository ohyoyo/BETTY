#! /bin/bash
# /header
# title         : Betty, the voice of webstroopers.
# description   : Betty is a intelligent and funny bot, she can answer simple question and do simple task.
#                 she likes to play game and she is very aware of the meteo
# author        : Yoann Di Maria & Matthieu Vignolle.
# date 	        : 20161017
# build         : BETTYBOT 2.0
# usage         : sh betty.sh
# folder usage  : core/
# instruction   : README.md
# notes 	      : Only working on Unix machines
# \end header

# this function select a line in function of the file wished
mysuperfakeJson () {
	echo $(sed -ne s/^$1=//p $2)
}

# this function allow the translation
trsText () {
	lng=$(mysuperfakeJson "lang" "$basefile/core/session.txt")
 # this will get the first line (1p) in -> session.txt
	if [ "$lng" == "fr" ] ; then # if the user select fr then Betty open the file fr.txt
		file="$basefile/core/lang/fr.txt"
	elif [ "$lng" == "us" ] ; then # same from above but in english
		file="$basefile/core/lang/us.txt"
	fi

	echo "$b $(mysuperfakeJson "$1" "$file")" # select the right line in the file -> fr.txt or us.txt
}

# this function delete the accent (àaæ ..)
trsAccent () {
  echo "$*" | tr 'āáǎàēéěèīíǐìôöòçùûü...' 'aaaaeeeeiiiiooocuuu...'
}

# this function gives information back to user
userid () {
	echo "$(mysuperfakeJson "$1" "$basefile/core/session.txt")"
}

returnArgument2 () {
	echo $2
}

# function string lowercase
lowerCase () {
	echo "$*" | tr '[[:upper:]]' '[[:lower:]]' # translate the capital letter in lowercase letter
}
