#! /bin/bash
# /header
# title         : Betty, configuration.
# description   : Betty is a intelligent and funny bot, she can answer simple question and do simple task.
#                 she likes to play game and she is very aware of the meteo
# author        : Yoann Di Maria & Matthieu Vignolle.
# date 	        : 20161010
# build         : BETTYBOT 1.1
# usage         : sh betty.sh
# folder usage  : core/
# instruction   : README.md
# notes 	      : Only working on Unix machines
# \end header

botname="Betty"
botbuild="BETTYBOT 1.1"
autor="Yoann Di Maria & Matthieu Vignolle"
b="Betty : " # this line stand for the syntax on the terminal
user=$(whoami) # the whoami utility displays your effective user ID as a name
basefile=$(pwd) # the pwd utility writes the absolute pathname of the current working directory to the standard output.
packagefile="core/game" # create one variable for
f_session=$basefile/core/session.txt # path until the file -> session.txt
