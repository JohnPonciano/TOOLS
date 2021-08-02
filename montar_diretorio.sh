
#!/bin/bash
let save
echo "Type your IP or Local address : $local"
read local
echo "Directory name: "
read nome
echo "Domain name local.server"
read dominio
echo "User $user"
read user
echo "Password : "
read pass
echo "deleting Directory existing:"
sudo umount $save
sudo rm -r $save

echo "Create new Directory:  $nome"
sudo mkdir -p /mnt/$nome

echo "rodando $local , user $user , local : /mnt/$nome "

mount -t cifs -o username=$user,password=$pass,domain=$dominio //$local/$nome /mnt/$nome

echo "lendo.."
