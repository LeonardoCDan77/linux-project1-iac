#!/bin/bash

echo "Criando os diretórios"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo""
echo "Criando os grupos"
groupadd /GRP_ADM
groupadd /GRP_VEN
groupadd /GRP_SEC

echo""
echo "Criando os usuários"
useradd carlos -m -s /bin/bash -p$(opensssl passwd -crypt senha123)
useradd maria -m -s /bin/bash -p$(opensssl passwd -crypt senha123)
useradd joao -m -s /bin/bash -p$(opensssl passwd -crypt senha123)
useradd debora -m -s /bin/bash -p$(opensssl passwd -crypt senha123)
useradd sebastiana -m -s /bin/bash -p$(opensssl passwd -crypt senha123)
useradd roberto -m -s /bin/bash -p$(opensssl passwd -crypt senha123)
useradd josefina -m -s /bin/bash -p$(opensssl passwd -crypt senha123)
useradd amanda -m -s /bin/bash -p$(opensssl passwd -crypt senha123)
useradd rogerio -m -s /bin/bash -p$(opensssl passwd -crypt senha123)

echo""
echo "Atribuindo grupos aos usuários"
usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao
usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto
usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

echo""
echo "Colocando o root como dono dos grupos e diretórios"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo""
echo "Permissões dos usuários"
chmod 777 /publica
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo""
echo "Fim das operações"


