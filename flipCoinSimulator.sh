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
                        continue
                fi
                if [ $HeadCount -gt $limit ]
                then
                         Headdiff=$(($HeadCount-$TailCount ))
                        if [ $Headdiff -eq 2 ]
                        then
                                echo " Head is winner by $Headdiff"
                                        break
                        fi

                fi
        fi
        if [ $Tail -eq $Winner ]
        then
                (( ++TailCount ))
                if [ $TailCount -eq $limit  ]
                then
                        continue
                fi
                if [ $TailCount -gt $limit ]
                then
                         TailDiff=$(( $TailCount-$HeadCount ))
                        if [ $TailDiff -eq 2 ]
                        then
                                echo "Tails is winner by $TailDiff"
                                        break
                        fi


                fi
        fi
done



