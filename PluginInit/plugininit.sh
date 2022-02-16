#!/bin/bash

echo "Plugininit v1.0"
echo "Starting your project!"
[ ! -d "${PWD}/$1" ] && mkdir $1 && cd $1 && echo "Creating dir: $1"
[ -z "$(ls -A ${PWD})" ] && cp /home/senoraraton/scripts/PluginInit/*.* ${PWD} && echo "Copying files to: ${PWD}"
