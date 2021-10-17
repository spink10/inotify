#!/bin/bash
watchdir=/opt/watchthisdir/
logfile=/opt/scripts/watchthisoutput.log
outputdir=/opt/scripts/
while : ; do
        inotifywait $watchdir|while read path action file; do
                ts=$(date +"%C%y%m%d%H%M%S")
                echo "$ts :: file: $file :: $action :: $path">>$logfile
		tar -cvf $outputdir/$file.tar.gz $watchdir/$file
        done
done
exit 0