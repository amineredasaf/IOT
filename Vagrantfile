# -*- mode: ruby -*-
# vi: set ft=ruby :

BOX="ubuntu/jammy64"
BOX_URL="https://cloud-images.ubuntu.com/jammy/current/jammy-server-cloudimg-amd64-vagrant.box"

VM_MASTER_NAME="xxxxx"
MASTER_IP="192.168.56.110"
CPU=2
MEM=2024

HOST_SRC_PATH=
VM_SRC_PATH=

Vagrant.configure("2") do |config|

  config.vm.box = BOX
  config.vm.box_url= BOX_URL

  # this is Master Node.
  
  config.vm.define VM_MASTER_NAME do |control|
    control.vm.network "private_network", ip:  MASTER_IP
    config.vm.network "forwarded_port", guest: 30080, host: 30080
    config.vm.network "forwarded_port", guest: 30443, host: 30443
    config.vm.network "forwarded_port", guest: 8080, host: 8080
    config.vm.network "forwarded_port", guest: 80, host: 80
    control.vm.hostname = VM_MASTER_NAME
    control.vm.provider "virtualbox" do |vb|
      vb.memory=MEM
      vb.cpus=CPU
      vb.name=VM_MASTER_NAME
    end
  end
end