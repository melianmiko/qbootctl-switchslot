#!/bin/bash
active=`qbootctl -c`

if [[ "$active" == "Current slot: _a" ]]
then
        echo "Swiched to slot B"
        qbootctl -s b
else
        echo "Swiched to slot A"
        qbootctl -s a
fi

echo "Going to reboot..."
sleep 1
reboot

