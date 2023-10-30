echo -n "enter number: "
read n 

if [ $n = 0 ] 
then
	exit 
else
	find . -type d -name "*$n*" && find . -name "*.txt" | grep -Eo '[0-9]' > output.txt
	sort -g output.txt 
	cat output.txt
	paste -sd+ output.txt | bc
	

fi


