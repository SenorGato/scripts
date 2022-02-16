LOGVAL=date -r ~/scripts/Stone/stone.data

if [$CURVAL==$LOGVAL]
then
    exit[0]
fi

SUNRISE=$(cat ~/scripts/Stone/stone.data | jq '.results .sunrise')
SUNSET=$(cat ~/scripts/Stone/stone.data | jq '.results .sunset')
SOLARNOON=$(cat ~/scripts/Stone/stone.data | jq '.results .solar_noon')
DAYLENGTH=$(cat ~/scripts/Stone/stone.data | jq '.results .day_length')
CTBEGIN=$(cat ~/scripts/Stone/stone.data | jq '.results .civil_twilight_begin')
CTEND=$(cat ~/scripts/Stone/stone.data | jq '.results .civil_twilight_end')
ATBEGIN=$(cat ~/scripts/Stone/stone.data | jq '.results .astronomical_twilight_begin')
ATEND=$(cat ~/scripts/Stone/stone.data | jq '.results .astronomical_twilight_end')
NTBEGIN=$(cat ~/scripts/Stone/stone.data | jq '.results .nautical_twilight_begin')
NTEND=$(cat ~/scripts/Stone/stone.data | jq '.results .nautical_twilight_end')

CURVAL=$LOGVAL
