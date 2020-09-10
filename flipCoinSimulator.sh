read -p " Enter the Winning Limit" limit
HeadCount=0
TailCount=0
valid=true
Head=1
Tail=0
while [ $valid ]
do
        Winner=$(( RANDOM %2 ))
        if [ $Head -eq $Winner ]
        then
                (( ++HeadCount ))
                if [ $HeadCount -eq $limit ]
                then
			Headdiff=$(($HeadCount-$TailCount ))
			 if [ $Headdiff -eq 0 ]
                        then
                                echo "Tie between them"
                                break
                        fi

                        echo "Head win first by $Headdiff Times"
                        break
                fi
        fi
        if [ $Tail -eq $Winner ]
        then
                (( ++TailCount ))
                if [ $TailCount -eq $limit  ]
                then
			TailDiff=$(( $TailCount-$HeadCount ))
			 if [ $TailDiff -eq 0 ]
                        then
                                echo "Tie Between them"
                                        break
                        fi

                        echo "Tail win first by $TailDiff Times"
                        break
                fi
        fi
done


