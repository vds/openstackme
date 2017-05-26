#!/bin/bash

useradd -p `mkpasswd "$pass"` -d /home/vds -m -g users -s /bin/bash vds
usermod -aG sudo vds
cp -r .ssh/ ~vds/
chown vds.vds ~vds/.ssh/
sudo apt update
sudo apt full-upgrade -y
apt install -y libvirt-bin qemu-kvm virt-manager git bzr byobu 
