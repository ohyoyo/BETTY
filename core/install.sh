#! /bin/bash
# /header
# title         : Betty, install.
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

# $f_session is session.txt file -> config.sh
# $(trsText "*") select the right line in the file -> lang/fr.txt lang/us.txt

rm -r $f_session # restart the session.txt file
echo "Choose a language / Choisi une langue (fr/us)"
read dmrlang # read language

# write in the file the selected language
if [ "$dmrlang" == "us" ] ; then
  echo "lang=$dmrlang" >> $f_session
elif [ "$dmrlang" == "fr" ] ; then
  echo "lang=$dmrlang" >> $f_session
else
  echo "us or fr"
  exit
fi

echo "user=$user" >> $f_session # write in the file session.txt the user's session name (whoami)
echo "$(trsText "install.welcome")"
echo "$(trsText "install.whatfirstname")" && read name
echo "$(trsText "install.firstname")" $name && echo "name=$name" >> $f_session # Betty welcome the user and write the name of the user in the file session.txt
