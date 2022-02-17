LOGVAL=$(date -r ~/scripts/Stone/stone.data)

if [ "$CURVAL" != "$LOGVAL" ]; then

    SUNRISE=$(cat ~/scripts/Stone/stone.data | jq -R '.results .sunrise')
    SUNSET=$(cat ~/scripts/Stone/stone.data | jq -R '.results .sunset')
    ATBEGIN=$(cat ~/scripts/Stone/stone.data | jq -R '.results .astronomical_twilight_begin')
    ATEND=$(cat ~/scripts/Stone/stone.data | jq -R '.results .astronomical_twilight_end')
    DAYLENGTH=$(cat ~/scripts/Stone/stone.data | jq -R '.results .day_length')
    #SOLARNOON=$(cat ~/scripts/Stone/stone.data |  jq -R '.results .solar_noon')
    #CTBEGIN=$(cat ~/scripts/Stone/stone.data | jq -R '.results .civil_twilight_begin')
    #CTEND=$(cat ~/scripts/Stone/stone.data | jq -R '.results .civil_twilight_end')
    #NTBEGIN=$(cat ~/scripts/Stone/stone.data | jq -R '.results .nautical_twilight_begin')
    #NTEND=$(cat ~/scripts/Stone/stone.data | jq -R '.results .nautical_twilight_end')

    CURVAL=$LOGVAL
else
    return;
fi
