#!/bin/sh
echo "######################"
echo " Enviroment Variables"
echo "######################"
printenv

echo "######################"
echo " IP Address info"
echo "######################"
ip add

echo "######################"
echo " DNS Info"
echo "######################"
cat /etc/resolv.conf

if [ -n "${TRACERT}" ]; then
    echo " TRACEROUT ${TRACERT}"
    echo "----------------------"
    traceroute ${TRACERT}
fi

if [ -n "${NMAP}" ]; then
    echo " NMAP ${NMAP}"
    echo "----------------------"
    nmap ${NMAP}
fi

if [ -n "${DIG}" ]; then
    echo " DIG ${DIG}"
    echo "----------------------"
    dig ${DIG}
fi

if [ -n "${TCPDUMP}" ]; then
    echo " TCPDUMP ${TCPDUMP}"
    echo "----------------------"
    tcpdump ${TCPDUMP}
fi
