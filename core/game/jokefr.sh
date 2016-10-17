#! /bin/bash
#
# title         : Jock
# description   : Script that can make you laugh
# author        : Matthieu Vignolle & Yoann Di Maria
# date 	        : 20161010
# build         : 0.1
# usage         : sh jock.sh
# notes 	      : Only working on Unix machines

# $b this variable is for syntax, it will reply "Betty :"

min=0
max=15
n=$[($RANDOM % ($[$max - $min] + 1)) + $min] # this line stand for create a random number between 0 & 15 in $n

if [ $n == "0" ] ; then
	echo "$b C'est l'histoire d'un poil avant il etait bien maintenant il est pubien."

elif [ $n == "1" ] ; then
	echo "$b Tu connais le cri du spermatozoïde ? \n>> Bah la prochaine fois au lieu d'avaler tu croques."

elif [ $n == "2" ] ; then
	echo "$b Quelle est la mamie qui fait peur aux voleurs ? \n>> Mamie Traillette."

elif [ $n == "3" ] ; then
	echo "$b C'est quoi le plus dur à mixer dans les légumes ? \n>> Le fauteuil."

elif [ $n == "4" ] ; then
	echo "$b Tu connais la définition d'un déséquilibré sexuel ? \n>>'est un mec qui bande et qui tombe en avant"

elif [ $n == "5" ] ; then
	echo "$b C'est l'histoire d'un zoophile qui prend son élan..."

elif [ $n == "6" ] ; then
	echo "$b Les meilleures blagues sont souvent vulgaires... Et je ne peux pas dire de vulgarités."

elif [ $n == "7" ] ; then
	echo "$b Je vous préviens c'est une blague à deux balles... Pan! Pan!"

elif [ $n == "8" ] ; then
	echo "$b Deux asticots se retrouvent dans une pomme : 'Tiens ! Je na savais pas que vous habitiez le quartier !' "

elif [ $n == "9" ] ; then
	echo "$b Deux puces sortent du cinéma, l'une dit à l'autre : 'On rentre à pied ou on prend un chien ?' "

elif [ $n == "10" ] ; then
	echo "$b C'est la fesse gauche qui dit à la fesse droite : 'ça sent mauvais dans le couloir !'"

elif [ $n == "11" ] ; then
	echo "$b C'est l'histoire d'un gars qui a 5 bites. Son slip Lui va comme un gant"

elif [ $n == "12" ] ; then
	echo "$b J'ai cru que Mozart était mort mais mozzarella"

elif [ $n == "13" ] ; then
	echo "$b Ce matin, j'ai voulu faire une blague sur le Super U, mais elle n'a pas Supermarché !"

elif [ $n == "14" ] ; then
	echo "$b Pourquoi les Pokémons ne peuvent pas conduire ? \n>> Parce qu'ils ont trop de PV"

elif [ $n == "15" ] ; then
	echo "$b Pourquoi les femmes ne veulent-elles plus se marier ? \n>> Elles préfèrent avoir du jambon dans le frigo qu'un gros porc dans le salon."

fi
