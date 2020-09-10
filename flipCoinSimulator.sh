Winner=$(( RANDOM%2))
Head=1
Tail=0
HeadCount=0
TailCount=0
read -p "Enter the limit " limit
for (( i=0; i<$limit; i++ ))
do
	Winner=$(( RANDOM%2))
	if [ $Head -eq $Winner ]
	then
		(( HeadCount++ ))
	else
		(( TailCount++ ))
	fi
done

echo  "No of times Head won" $HeadCount
echo  "No of times Tail won" $TailCount

