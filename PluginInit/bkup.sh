#!/bin/bash
#Project #0 of #00 Unfinished projects.
#Via con dios.

#echo "Plugininit"
#echo "Brought to you by the makers of:"
#echo "Unfinshed project #1"
##Every time you run the script it increases the number, and chooses a random
##number from 1 - that many.
##Also takes a path
##Clone this script, and add it to
##Append every script created to the end of the file.  Or the path
secondline=`sed -n '2p' 'plugininit.sh'`
pattern='#Project #([0-9]*) of #([0-9]*) .*$'

[[ "$secondline" =~ $pattern ]] 
echo "${BASH_REMATCH[1]}"
echo "${BASH_REMATCH[2]}\n\n"
#sed '/*/ { n; s/^#Project #(*[0-9])/5/;}' plugininit.sh

#echo "$(($BASH_REMATCH[1] + 1))"
#echo "$((a + 1))"
echo $((${BASH_REMATCH[1]}+1))
newline="#Project #$((${BASH_REMATCH[1]}+1)) of #$((${BASH_REMATCH[1]}+1)) unfinished projects."
echo "$newline\n\n"
sed '2 s/.*/$newline/' plugininit.sh >> plugininit.sh
