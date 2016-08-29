#!/bin/bash
#from http://ubuntuforums.org/showthread.php?t=1394268
cat "$@"|sed -n 's/^URL=\(.*\)$/\1/p'|while read link;do
firefox -new-tab "$link";done

#alternate way to try, should be better
#http://askubuntu.com/questions/353932/equivalent-of-url-file-on-ubuntu
#scott r
#!/usr/bin/bash
#sed 's/^BASEURL=/URL=/' "$1" | grep -m 1 '^URL=' | sed 's/^URL=//' | sed 's/\r//' | xargs xdg-open

#for integration into the caja right menu
#create a new file in ~/.local/share/applications and in there you associate the file types to be opened 
