#!/bin/bash

OSD = ""

ass() {
	$OSD = "_"
}

[ "$OSTYPE" == "darwin" ] && ass() 

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
if [ ! -e /usr/bin/velt/cst ]
then
	sudo mkdir /usr/bin/velt/cst
fi

sudo touch /usr/bin/velt/bin/.velt
sudo touch /usr/bin/velt/target/.c_write
sudo touch /usr/bin/velt/target/.comp~
sudo touch /usr/bin/velt/cst/.uninstall.sh
sudo touch /usr/bin/velt/cst/.set.sh

sudo cp "./.${OSD}velt" /usr/bin/velt/bin/.velt
sudo cp "./.${OSD}comp~" /usr/bin/velt/target/.comp~
sudo cp "./.${OSD}c_write" /usr/bin/velt/target/.c_write
sudo cp "./.${OSD}uninstall.sh" /usr/bin/velt/cst/.uninstall.sh
sudo cp "./.${OSD}set.sh" /usr/bin/velt/cst/.set.sh

sudo chmod 1 /usr/bin/velt/bin/.velt
sudo chmod 1 /usr/bin/velt/target/.comp~
sudo chmod 1 /usr/bin/velt/target/.c_write
sudo chmod 1 /usr/bin/velt/cst/.uninstall.sh
sudo chmod 1 /usr/bin/velt/cst/.set.sh

sleep 2
echo "Velt installed successfully 😎️ 💐️. Run velt --version to confirm."
exit
