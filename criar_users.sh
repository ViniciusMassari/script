echo "Criando Grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando diretórios e alterando permissões"

mkdir /public
chmod 777 /public/

mkdir /adm
chown root:GRP_ADM /adm/
chmod 770 /adm/

mkdir /ven
chown root:GRP_VEN /ven/
chmod 770 /ven/

mkdir /sec
chown root:GRP_SEC /sec/
chmod 770 /sec/

echo "Criando usuários e adicionando aos grupos..."
useradd carlos -c "Carlos Souza" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_ADM
passwd carlos -e


useradd maria -c "Maria Souza" -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_ADM
passwd maria -e

useradd joao -c "João Souza" -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_ADM
passwd joao -e


useradd debora -c "Debora Silva" -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_VEN
passwd debora -e

useradd sebastiana -c "Sebastiana Silva" -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_VEN
passwd sebastiana -e

useradd rogerio -c "Rogerio Silva" -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_VEN
passwd rogerio -e

useradd josefina -c "Josefina Santos" -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_SEC
passwd josefina -e

useradd amanda -c "Amanda Santos" -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_SEC
passwd amanda -e

useradd rogerio -c "Rogério Santos" -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_SEC
passwd rogerio -e
