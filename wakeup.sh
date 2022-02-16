#!/bin/bash

songlist=("songs/Adult Swim Bump - Dream Bright.mp3" "songs/Getting There.mp3")

func() {
    while read line; do
        echo "got some data: ${line}"
        # say ${line:1}
        if [ "$line" == "__INTRUDER_ALERT_69420__" ]
        then
            mpv ~/Downloads/Navi-Zelda-Sample-Hey-Listen.mp3
            date
        fi
    done
}

echo "Starting."

nc -lukvw 0 3339 | func

# open door
# echo "GRANT_ENTRY_ACCESS" | nc -u 10.21.1.109 3333 
