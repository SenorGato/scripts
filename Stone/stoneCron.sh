#Parse the times of day, and build cron jobs at those times
#Set color variable for time
#Set 


source ~/scripts/Stone/stonerefresh.sh
CURTIME=$(date +%s)
SUNRISEDATE=$(date -d "$SUNRISE" +%s)
SUNSETDATE=$(date -d "$SUNSET" +%s)
ATBDATE=$(date -d "$ATBEGIN" +%s)
ATEDATE=$(date -d "$ATEND" +%s)

source ~/.PS1
NIGHTPS1="%F{59}%T%f"
DAWNPS1="%F{27}%T%f"
DAYPS1="%F{93}%T%f"
DUSKPS1="%F{57}%T%f"

if [ "$CURTIME" -lt "$ATBDATE" ]
then
    PS1=$NIGHTPS1$PS1
elif [[ "$CURTIME" -ge $ATBDATE  ]] && [[ "$CURTIME " -lt "$SUNRISEDATE" ]]
then
    PS1=$DAWNPS1i$PS1 
elif [[ "$CURTIME" -ge "$SUNRISEDATE" ]] && [[ "$CURTIME" -lt "$SUNSETDATE" ]]
then 
    PS1=$DAYPS1$PS1
elif [[ $CURTIME -ge $SUNSETDATE ]] && [[ $CURTIME -lt $ATEDATE ]]
then
    PS1=$DUSKPS1$PS1 
elif [ $CURTIME -ge $ATEDATE ]
then
    PS1=$NIGHTPS1$PS1
fi
export PS1 
