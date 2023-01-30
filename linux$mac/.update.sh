sudo chmod 777 /usr/bin/velt/bin/.velt
sudo chmod 777 /usr/bin/velt/target/.comp~
sudo chmod 777 /usr/bin/velt/target/.c_write
sudo chmod 777 /usr/bin/velt/cst/.uninstall.sh
sudo chmod 777 /usr/bin/velt/cst/.set.sh

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
