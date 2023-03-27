#!/bin/bash

echo "Criando diretórios..."

mkdir -p /DADOS/publico
mkdir -p /DADOS/adm
mkdir -p /DADOS/ven
mkdir -p /DADOS/sec

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios...."

chown root:GRP_ADM /DADOS/adm
chown root:GRP_VEN /DADOS/ven
chown root:GRP_SEC /DADOS/sec

chmod 770 /DADOS/adm
chmod 770 /DADOS/ven
chmod 770 /DADOS/sec
chmod 777 /DADOS/publico

echo "Fim...."
