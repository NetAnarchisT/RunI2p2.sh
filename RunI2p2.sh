#!/bin/bash

I2PTEST="/etc/apt/sources.list.d/i2p-maintainers-i2p-oneiric.list"
KVIRCTEST="/usr/bin/kvirc"
I2PRUNTEST="/var/run/i2p/i2p.pid"

if [ ! -f ${I2PTEST}  ]
  then
    echo "I2P2 is not installed or is not found"
    echo "installing now please be ready to sudo to root"
    echo "and to configure is ok to leave defaults I"
    echo "recomend that you add the i2p service as a daemon so"
    echo "it runs when your computer starts"
    sleep 7
    sudo apt-add-repository ppa:i2p-maintainers/i2p
    sudo apt-get update
    sudo apt-get -y install i2p
    sudo dpkg-reconfigure -plow i2p
fi

if [ ! -f ${KVIRCTEST} ]
  then  
    echo "KVIRC is not installed about to install now"
    sudo apt-get install kvirc

if [ ! -f ${I2PRUNTEST}  ]
  then 
    sudo /etc/init.d/i2p start
  fi
sleep 5

fi
/usr/bin/kvirc irc://127.0.0.1:6668/#aaa

