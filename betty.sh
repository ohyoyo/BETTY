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
# notes         : Only working on Unix machines
# \end header

# /import file
basecore=core
	if [ -f "$basecore/config.sh" ] ; then
		source $basecore/config.sh
	else
		noCore=1
	fi
	if [ -f "$basecore/function.sh" ] ; then
		source $basecore/function.sh
	else
		noCore=1
	fi
	if [ -f "$basecore/param.sh" ] ; then
		source $basecore/param.sh
	else
		noCore=1
	fi
	if [ -f "$basecore/quest.sh" ] ; then
		source $basecore/quest.sh
	else
		noCore=1
	fi
	if [ "$noCore" == "1" ] ; then
		echo "Unable to start, some files are missing"
		exit
	fi
# \end import file

echo "\n"
echo "  ,   ,    "
echo " /\ ^/ \   "
echo " | \/   |          ____       _   _ "
echo " | |    |         |  _ \     | | | |      2.0 "
echo "  \ \  /          | |_) | ___| |_| |_ _           _._   "
echo "  '\|//'          |  _ < / _ \ __| __| | | |    _{ ' }_  "
echo "    ||            | |_) |  __/ |_| |_| |_| |   { ', ,' } "
echo "    ||            |____/ \___|\__|\__|\__, |   ',_/Y\_,' "
echo "    ||  ,                             ,__/ /     {_,_}"
echo "|\  ||  |\         Yoann Di Maria &   |___/        |"
echo "| | ||  | |        Matthieu Vignolle             (\|  /)"
echo "| | || / /         Coded white love and passion   \| //"
echo " \ \||/ /                                          |//"
echo "  \ ||/'   \   \./    //   \./    //   \./    \ //\|/ /"
echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
echo "\n\n"


# /file executable

# if Betty has never encounter the user she will execute core/install.sh
if [ $roundgo == 1 ] ; then

	install=$basecore/install.sh
	if [ ! -f "$install" ] ; then # if there are files missing -> echo impossible..
		echo "$(trsText "filenoexist")"
		exit # close session

# if the file core/install.sh exist then Betty will execute it
	else
		source $install
	fi

# if Betty has ever encounter the user she will welcome him
elif [ $roundgo == 2 ] ; then
	if [[ "$1" =~ $bye ]] ; then
		echo "$(trsText "byestop") $(userid "name")"
		rm -r $f_session
		exit
	fi

	echo "$(trsText "returnsession") $(userid "name")"

fi

# this line is for repeating "what can I do for you ?"
while [ "$questtext" != "stop" ]
do
		echo "$(trsText "whatdocan")" && read questtext
		echo "quest=$questtext" >> $f_session
		questfnc="$(trsAccent $(lowerCase "$questtext"))"
		if [ "$questfnc" == "helpcmd" ] ; then
			echo "- game (ex : game plusoumoins)\n- météo\n- joke\n- date\n- time"
		elif [[ "$questfnc" =~ $regexqueststop ]] ; then
			echo "$(trsText "byestop") $(userid "name")"
			rm -r $f_session
			exit

		elif [[ "$(trsAccent $(lowerCase "$questtext"))" =~ $regexquestcava ]] ; then
			echo "$(trsText "questcava")" && read returnquestcava
			if [[ "$(trsAccent $(lowerCase "$returnquestcava"))" =~ $regexyes ]] ; then
				echo "$(trsText "cava")"
			elif [[ "$(trsAccent $(lowerCase "$returnquestcava"))" =~ $regexno ]] ; then
				echo "$(trsText "cavapas")"
			fi

		elif [[ "$questfnc" =~ $regexquestrename ]] ; then
			echo "$(trsText "questrename") $name"

		elif [[ "$questfnc" =~ $regexquestplaygame ]] ; then
			if ! [[ -f "$packagefile/$(returnArgument2 $questtext).sh" ]] ; then
				echo "$(trsText "nogamef")"
				read returntextgame

				if [[ "$(trsAccent $(lowerCase "$returntextgame"))" =~ $regexyes ]] ; then
					echo "$(trsText "listgame")"
				elif [[ "$(trsAccent $(lowerCase "$returntextgame"))" =~ $regexno ]] ; then
					echo "$(trsText "nogameno")"
				fi

			else
				source "$packagefile/$(returnArgument2 $questtext).sh"
			fi

		elif [[ "$questfnc" =~ $regexquesttemps ]] ; then
			echo "$(trsText "cogite")"
			urlmetro="wttr.in"
			if [[ ping $urlmetro -n 1 ]] ; then
						curl $urlmetro
			else
				echo "Veuillez-vous connecter à internet"
			fi

		elif [[ "$questfnc" =~ $regexquestold ]] ; then
			echo "$(trsText "questold")"

		elif [[ "$questfnc" =~ $regexquestday ]] ; then
			nowdate=$(date "+%d/%m/%Y")
			echo "$(trsText "questday")"
			echo " _______________"
			echo "<   $nowdate   >"
			echo " ---------------"
			echo "     \   "
			echo "      \   "
			echo "       .--.  "
			echo "      |o_o |  "
			echo "      |:_/ |  "
			echo "     //   \ \  "
			echo "    (|     | )  "
			echo "   /'\_   _/'\  "
			echo "   \___)=(___/  "

		elif [[ "$questfnc" =~ $regexquesttvshow ]] ; then
			echo "$(trsText "questtvshow")"

		elif [[ "$questfnc" =~ $regexquestfood ]] ; then
			echo "$(trsText "questfood")"

		elif [[ "$questfnc" =~ $regexquestpolitehello ]] ; then
			echo "$(trsText "questpolitehello")"

		elif [[ "$questfnc" =~ $regexquestthanks ]] ; then
			echo "$(trsText "questthanks")"

		elif [[ "$questfnc" =~ $regexquesttime ]] ; then
			nowtime=$(date "+%Hh%M")
			echo " \n"
			echo "     .--,       .--,"
			echo "    ( (  \.---./  ) )"
			echo "     '.__/o   o\__.'"
			echo "        {=  ^  =}"
			echo "         >  -  <"
			echo " ______.""'-------''"".______"
			echo "/                         \ "
			echo "   $(trsText "questtime") $nowtime     "
			echo "\_________________________/"
			echo "         ___)( )(___"
			echo "        (((__) (__)))\n"

		elif [[ "$questfnc" =~ $regexquestsport ]] ; then
			echo "$(trsText "questsport")"

		elif [[ "$questfnc" =~ $regexquestinsult ]] ; then
			echo "$(trsText "questinsult")"

		elif [[ "$questfnc" =~ $regexquestactor ]] ; then
			echo "$(trsText "questactor")"

		elif [[ "$questfnc" =~ $regexquestflirt ]] ; then
			echo "$(trsText "questflirt")"

		elif [[ "$questfnc" =~ $regexquestmusic ]] ; then
			echo "$(trsText "questmusic")"

		elif [[ "$questfnc" =~ $regexquestapple ]] ; then
			echo "$(trsText "questapple")"

		elif [[ "$questfnc" =~ $regexquestsamsung ]] ; then
			echo "$(trsText "questsamsung")"

		elif [[ "$questfnc" =~ $regexquestdog ]] ; then
			echo "$(trsText "questdog")"

		elif [[ "$questfnc" =~ $regexquestcolor ]] ; then
			echo "$(trsText "questcolor")"

		elif [[ "$questfnc" =~ $regexquestlive ]] ; then
			echo "$(trsText "questlive")"

		elif [[ "$questfnc" =~ $regexquesttravel ]] ; then
			echo "$(trsText "questtravel")"

		elif [[ "$questfnc" =~ $regexquestParis ]] ; then
			echo "$(trsText "questParis")"

		elif [[ "$questfnc" =~ $regexquestbetty ]] ; then
			echo "$(trsText "questbetty")"

		elif [[ "$questfnc" =~ $regexquestjoke ]] ; then
			source "$packagefile/joke$(userid "lang").sh"

		else
			echo "$(trsText "dontrep")"
		fi
done
# \end file executable
