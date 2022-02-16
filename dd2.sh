#!/bin/bash
counter=3731   ## spaces here
offset=20
printf %-4d  $((++counter)) | dd bs=1 seek=$offset conv=nocreat,notrunc of="${BASH_SOURCE[0]:-$0}" 2>/dev/null || { echo >&2 "Can't update counter" ; exit 62 ; }  
# EX_OSFILE
