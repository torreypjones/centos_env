#!/bin/bash

#for i in a b c d e f g h i j k l m n o p q r s t u v w x y z ; do
	#for j in /dev/sd${i}? ; do
		#if [ -e "$j" ] then
			#echo working on: $j
		#fi
	#done
#done

exitcode=0

for i in `ls /dev/disk/by-label` ; do
	echo working on $(ls -1 /dev/disk/by-label/$i)

	label=$(echo $i | sed 's/\\x20//g')
	echo 
	echo converted to label \'$label\'

	mountdir=/mnt/${label}

	if [ ! -e $mountdir ]
	then
		mkdir $mountdir
	fi

	mount /dev/disk/by-label/$i ${mountdir} && echo mounted ${mountdir}

	if [ -$? -ne 0 ]
		then
			echo we had problems mounting ${mountdir} 1>&2
			exitcode=$((exitcode+1))
	fi
done

exit $exitcode
