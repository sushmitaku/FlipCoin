Winner=$(( RANDOM%2))
Head=1
Tail=0
if [ $Head -eq $Winner ]
then
	echo "Head is Winner"
else
	echo "Tail is Winner"
fi

