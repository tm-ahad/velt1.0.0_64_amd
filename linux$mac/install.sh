#!/bin/bash

if [ ! -e /usr/bin/velt ] 
then	
	sudo mkdir /usr/bin/velt
fi
if [ ! -e /usr/bin/velt/target ]
then
	sudo mkdir /usr/bin/velt/target
fi
if [ ! -e /usr/bin/velt/bin ]
then
	sudo mkdir /usr/bin/velt/bin
fi
if [ ! -e /usr/bin/velt/cst ]
then
	sudo mkdir /usr/bin/velt/cst
fi
if [ ! -e /usr/bin/velt/opt ]
then
	sudo mkdir /usr/bin/velt/opt
fi

sudo touch /usr/bin/velt/bin/velt
sudo touch /usr/bin/velt/target/.c_write
sudo touch /usr/bin/velt/target/.comp~
sudo touch /usr/bin/velt/cst/.uninstall.sh
sudo touch /usr/bin/velt/cst/.set.sh
sudo touch /usr/bin/velt/opt/.bash

if [ "$OSTYPE" = "linux-gnu" ]
then 
sudo cp ./.velt /usr/bin/velt/bin/.velt
sudo cp ./.comp~ /usr/bin/velt/target/.comp~
sudo cp ./.c_write /usr/bin/velt/target/.c_write
sudo cp ./.uninstall.sh /usr/bin/velt/cst/.uninstall.sh
sudo cp ./.set.sh /usr/bin/velt/cst/.set.sh
else
sudo cp ./._velt /usr/bin/velt/bin/velt
sudo cp ./._comp~ /usr/bin/velt/target/.comp~
sudo cp ./._c_write /usr/bin/velt/target/.c_write
sudo cp ./._uninstall.sh /usr/bin/velt/cst/.uninstall.sh
sudo cp ./._set.sh /usr/bin/velt/cst/.set.sh
fi

if [ ! -p velt  ]
then
	sudo cp $HOME/.bashrc /usr/bin/velt/opt/.bash
	sudo echo "export PATH=PATH:/usr/bin/velt/bin/" > "${HOME}/.bashrc"
fi

sudo chmod 1 /usr/bin/velt/bin/velt
sudo chmod 1 /usr/bin/velt/target/.comp~
sudo chmod 1 /usr/bin/velt/target/.c_write
sudo chmod 1 /usr/bin/velt/cst/.uninstall.sh
sudo chmod 1 /usr/bin/velt/cst/.set.sh

echo "Velt installed successfully 😎️ 💐️. Run velt --version to confirm."
exit
