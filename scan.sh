#!/bin/bash

echo "Type your IP or Local address : $local"
local=10.200.0.100/secretarias
echo "User $user"
user=jonathan.ponciano
echo "Domain name local.server"
dominio=itu.local
echo "Password : "
pass=Jo@9pokemon
echo "Directory name: "
nome=secretarias
save=/mnt/$nome
echo "deleting Directory existing:"
sudo umount $save
sudo rm -r $save

echo "Create new Directory:  $nome"
sudo mkdir -p /mnt/$nome





echo "rodando $local , user $user , local : /mnt/$nome "

sudo mount -t cifs //$local -o username=$user,password=$pass,domain=$dominio  $save

echo "lendo.."

sudo find $save -name '*acuna'




