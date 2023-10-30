echo -n "enter number: "
read n 

if [ $n = 0 ] 
then
	exit 
else
	find . -type d -name "$n" | grep "*.txt" | wc -l || true 
fi
