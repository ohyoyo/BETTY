#! /bin/bash

#title       : Joke US
#description : Script that can make you laugh
#author      : Matthieu Vignolle & Yoann Di Maria
#date 	     : 20161016
#version     : 0.1
#usage       : sh jokeus.sh
#notes 	     : Only working on Unix machines
#=================================================

# $b this variable is for syntax, it will reply ">>"

min=0
max=15
n=$[($RANDOM % ($[$max - $min] + 1)) + $min] # this line stand for create a random number between 0 & 15 in $n

if [ $n == "0" ] ; then
	echo "$b How do you make a tissue dance? \n>>You put a little boogie in it."

elif [ $n == "1" ] ; then
	echo "$b Why did the policeman smell bad? \n>>He was on duty."

elif [ $n == "2" ] ; then
	echo "$b Why can’t you hear a pterodactyl in the bathroom? \n>>Because it has a silent pee."

elif [ $n == "3" ] ; then
	echo "$b What kind of bees make milk instead of honey? \n>>Boobies."

elif [ $n == "4" ] ; then
	echo "$b Horse walks into a bar. Bartender says: 'Why the long face?'"

elif [ $n == "5" ] ; then
	echo "$b I never make mistakes…I thought I did once; but I was wrong."

elif [ $n == "6" ] ; then
	echo "$b What’s Beethoven’s favorite fruit? \n>>…Ba-na-na-naaa!"

elif [ $n == "7" ] ; then
	echo "$b What did the little fish say when he swam into a wall? DAM!"

elif [ $n == "8" ] ; then
	echo "$b The past, present and future walk into a bar. It was tense."

elif [ $n == "9" ] ; then
	echo "$b What’s brown and sticky? \n>>A stick!"

elif [ $n == "10" ] ; then
	echo "$b Why are pirates so mean? \n>>I don’t know, they just arrrrrrrrr!"

elif [ $n == "11" ] ; then
	echo "$b Two drums and a cymbal fall off a cliff. Ba-dum Tish!"

elif [ $n == "12" ] ; then
	echo "$b There were two peanuts walking down a dark alley, one was assaulted."

elif [ $n == "13" ] ; then
	echo "$b Bacon and eggs walk into a bar and order a beer, the bartender says sorry, we don’t serve breakfast."

elif [ $n == "14" ] ; then
	echo "$b A dyslexic man walks into a bra."

elif [ $n == "15" ] ; then
	echo "$b I used to date a dyslexic woman. I took her home and she ended up cooking my sock."

fi
