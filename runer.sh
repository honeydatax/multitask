sudo dd if=/dev/zero of=image.img bs=12M count=1
sudo mke2fs image.img
sudo mkdir /mnt/disket1
sudo mount -o loop image.img /mnt/disket1
cd /mnt/disket1
sudo mkdir root
sudo mkdir etc
sudo mkdir usr
sudo mkdir usr/bin
sudo mkdir bin
sudo mkdir home
sudo mkdir home/pi
sudo mkdir temp
sudo chmod 777 *.*
sudo chmod 777 *
sudo chmod 777 *.
sudo chmod 777 usr/bin
sudo chmod 777 home/pi
sh -c "sudo cp ~/$1 /mnt/disket1/etc/"
sudo chmod 777 etc/*
echo __________________
tree
echo __________________
cd etc
qemu-i386 $1 $2
cd ~/
sudo umount /mnt/disket1


