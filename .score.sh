#!/bin/bash
pass=0;
fail=0;
if [ $? -eq 0 ];then
	    cd ../../../..
        cd home
        if ! [ -e oldfile1.sh ] && ! [ -e oldfile2.sh ] && ! [ -e oldfile3.sh  ];then
        ((pass++))
        fi;
fi;

score=$(( $pass * 100 ))

echo "FS_SCORE:$score%"


