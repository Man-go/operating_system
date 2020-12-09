#!/bin/bash

echo bezim

while read LINE  #nejde mi to :'(((((( nevim ako udelat 2. promnennu
do
	#TEPLOTA=$((cut -f 3,6 -d ,) | tr "," " ") 
	#TTT=$((cut -f 3,6 -d,) | tr "," " ")
	#CAS=$(cut -f 1 -d,) < TTT
	#TEPLOTA=$(cut -f 2 -d,) < TTT

	#$(cut -f 3 -d , LINE) > CAS
	
	CAS=$((cut -f 3 -d ,) | cut -c 12-16 | tr ":" "-") 
	#TEPLOTA=$(cut -f 6 -d ,)
done

cat <<THE_END
set terminal wxt
set xdata time
set timefmt "%H-%M"
set xtics format "%H:%M"
plot '-' using 1:2 with boxes
THE_END

#echo "$TTT"
echo "$CAS"
#echo "$TEPLOTA"

cat <<THE_END
e
THE_END
