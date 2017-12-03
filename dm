#!/bin/bash
CURRENT=$(free | grep Mem | awk '{print $3/$2 * 100.0}'|awk -F'.' '{print $1}')
CRITICAL=4
WARNING=2
if [ "`echo $CURRENT| awk '{print $1}'`" -gt "$CRITICAL" ] ; then
echo 'CRITICAL!!! High Memory Used' 
elif [ "`echo $CURRENT| awk '{print $1}'`" -gt "$WARNING" -a "`echo $CURRENT| awk '{print $1}'`" -lt "$CRITICAL" ] ; then
echo 'WARNING!!! High Memory Used' 

fi

