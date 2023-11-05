#!bin/bash

#Instalar RVM
\curl -sSL https://get.rvm.io | bash
#Adicionar permições para RVM no $USER
rvm group add rvm "$USER"
#Atualizar as permissões adicionadas
rvm fix-permissions
su - $USER
#Verificar se o mesmo está no ID
id
