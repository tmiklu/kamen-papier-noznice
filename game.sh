#!/bin/bash

clear

#
## player: computer
#

PLAYERCOMP=$(cat <<EOF
kamen
noznice
papier
EOF
)

#
## Interactive game
#

while true
do

	COMP=$(echo $PLAYERCOMP | tr '[:space:]' '\n' | shuf -n 1 -)

	echo "Zahraj sa hru, kamen, papier a noznice"
	echo -n "volba: "
	read
	echo
	echo "Tvoja volba: ${REPLY}"

case $REPLY in
	kamen)

		echo -e "Pocitac zvolil: $COMP\n"

		if [ "kamen" == $COMP ]
		then
			echo "remiza"
		elif [ "kamen" != $COMP ]
		then
			if [ $COMP == "noznice" ]
			then
				echo "vyhral si!"
			else
				echo "Prehral si!"
			fi
		fi
		;;
	noznice)
                
		echo -e "Pocitac zvolil: $COMP\n"

		if [ "noznice" == $COMP ]
		then
			echo "remiza"
		elif [ "noznice" != $COMP ]
		then
			if [ $COMP == "papier" ]
			then
				echo "vyhral si!"
			else
				echo "Prehral si!"
			fi
		fi

		;;
	papier)
		echo -e "Pocitac zvolil: $COMP\n"

		if [ "papier" == $COMP ]
		then
			echo "remiza"
		elif [ "papier" != $COMP ]
		then
			if [ $COMP == "kamen" ]
			then
				echo "vyhral si!"
			else
				echo "Prehral si!"
			fi
		fi
		;;
	*)
		echo
		echo "Neplatny vstup $REPLY!"
		echo "hra konci!"
		exit 1
		;;
esac
#
## wait 3 seconds for next round
#
sleep 3

#
## clear screen from previous game
#
clear

done
