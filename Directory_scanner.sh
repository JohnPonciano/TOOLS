 

#!/bin/bash

echo "Type your IP or Local address : $local"
read local
echo "Directory name: "
read nome
echo "Domain name local.server"
read dominio
echo "File name for Search"
read file_seach
echo "User $user"
read user
echo "Password : "
read pass
read save
echo "deleting Directory existing:"
sudo umount $save
sudo rm -r $save

echo "Create new Directory:  $nome"
sudo mkdir -p /mnt/$nome

echo "rodando $local , user $user , local : /mnt/$nome "

sudo mount -t cifs //$local -o username=$user,password=$pass,domain=$dominio  $save

echo "lendo.."

sudo find $save -name $file_seach


