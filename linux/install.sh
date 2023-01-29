#!/bin/bash

if [ ! -e /usr/bin/velt ] 
then	
	sudo mkdir /usr/bin/velt
fi
if [ ! -e /usr/bin/velt/target ]
then
	sudo /usr/bin/velt/target
fi
if [ ! -e /usr/bin/velt/bin ]
then
	sudo mkdir /usr/bin/velt/bin
fi

sudo touch /usr/bin/velt/bin/velt
sudo touch /usr/bin/velt/target/.c_write
sudo touch /usr/bin/velt/target/.comp~

sudo cp ./velt /usr/bin/velt/bin/velt
sudo cp ./.comp~ /usr/bin/velt/target/.comp~
sudo cp ./.c_write /usr/bin/velt/target/.c_write

sudo chmod 1 /usr/bin/velt/bin/velt
sudo chmod 1 /usr/bin/velt/target/.comp~
sudo chmod 1 /usr/bin/velt/target/.c_write

