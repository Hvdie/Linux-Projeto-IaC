#!/bin/bash

mkdir /home/publico /home/adm /home/ven /home/sec

echo "Os diretórios foram criados com sucesso!"

ls -l /home

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados com sucesso!"

useradd carlos -c "Administração" -s /bin/bash -G GRP_ADM
useradd maria -c "Administração" -s /bin/bash -G GRP_ADM
useradd joao -c "Administração" -s /bin/bash -G GRP_ADM

useradd debora -c "Administração" -s /bin/bash -G GRP_VEN
useradd sebastiana -c "Administração" -s /bin/bash -G GRP_VEN
useradd roberto -c "Administração" -s /bin/bash -G GRP_VEN

useradd josefina -c "Administração" -s /bin/bash -G GRP_SEC
useradd amanda -c "Administração" -s /bin/bash -G GRP_SEC
useradd rogerio -c "Administração" -s /bin/bash -G GRP_SEC

echo "Os usuários foram criados com sucesso e adicionados aos seus respectivos grupos!"

chown root:root /publico
chown -R root:GRP_ADM /home/adm
chown -R root:GRP_VEN /home/ven
chown -R root:GRP_SEC /home/sec
chmod 777 /home/publico
chmod 770 /home/adm
chmod 770 /home/ven
chmod 770 /home/sec

echo "As permissões dos diretórios foram configuradas com sucesso!"