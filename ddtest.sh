#!/bin/bash
str="#Project #0 of #00 Unfinished projects."
offset_calculation=10
#printf %-4d $((++counter)) | dd bs=1 skip$((offset_calculation)) conv=onotrunc of=$0
#!/bin/bash\ncounter=0 ###### spaces here\noffset=20\nprintf %-4d\   $((++counter)) | dd bs=1 
                   skip=offset conv=nocreat conv=notrunc of="${BASH_SOURCE[0]:-$0}" 2>/dev/null || { echo >&2 "Can't update 
                   counter ; exit 62 ; }  # EX_OSFILE
conv=nocreat,notrunc


