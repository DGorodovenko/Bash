for FILE in `ls ?2017*.txt`; do
	if [ -f $FILE ] ; then 
		LP=0
		LNP=0
		LZ=0
		while read LINIA ; do
			for LICZBA in $LINIA ; do
				if [ $LICZBA -eq 0 ] ; then
					let LZ++
				else
					WYNIK=$(($LICZBA % 2))
					if [ $WYNIK -eq 0 ] ; then
						let LP++
					else
						let LNP++
					fi
				fi
			done
			done < "$FILE"
			echo "Plik $FILE zawiera $LP parzystych i $LNP nieparzystych 
liczb"
			echo " oraz $LP liczb zero." 
		fi
done
