cd /home/james/drivers/rtw8852be
git pull
make -j8
sudo make install
sudo modprobe -rv 8852be
sudo modprobe -v 8852be

cd /home/james/drivers/rtw89-BT
git pull
make -j8
sudo make install
sudo modprobe -rv btusb
sudo modprobe -v btusb


