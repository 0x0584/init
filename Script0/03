#!/bin/bash

#							   Stopwatch -*- 0x0584 -*-
#
# quit using ^C

BEGIN=$(date +%s)

echo -n "Stop-Fucking-Watch	 \n\n"

while true;
do

	NOW=$(date +%s)
	DIFF=$(($NOW - $BEGIN))
	MINS=$(($DIFF / 60))
	SECS=$(($DIFF % 60))

	if [ "$DIFF" != "$OLDDIFF" ]
	then
		echo -ne "\b\b\b\b$MINS:$(printf %02d $SECS)"
	fi
	OLDDIFF=$DIFF
done
