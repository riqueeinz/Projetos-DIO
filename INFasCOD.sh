
#!/bin/bash

echo "Criando suas pastas, AGUARDE..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Configurando seus grupos de usuários, AGURDE..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "configurando usuários, AGURADE..."

useradd carlos -m -s /bin/bash -p $(opnssl passwd -crypt acesso123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(opnssl passwd -crypt acesso123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(opnssl passwd -crypt acesso123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(opnssl passwd -crypt acesso123) -G GRP_VEM
useradd sebastiana -m -s /bin/bash -p $(opnssl passwd -crypt acesso123) -G GRP_VEM
useradd roberto -m -s /bin/bash -p $(opnssl passwd -crypt acesso123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(opnssl passwd -crypt acesso123) -G GRP_SEC 
useradd amanda -m -s /bin/bash -p $(opnssl passwd -crypt acesso123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(opnssl passwd -crypt acesso123) -G GRP_SEC

echo "Liberando as permições dos usuários, AGUARDE..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Configurações finalizadas."
