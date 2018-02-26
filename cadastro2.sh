#!/bin/bash
#Código de Cadastro
#Daniel Kardec

clear
echo "Cadastro do usuario"
nome(){
read -p "Digite o seu nome: " NAME
echo $NAME | grep -E '[0-9,.;:/?!@#$%"&*()_+=]'
echo "Nome Aceito" && email || echo "Nome Não Aceito" && nome
}
email(){
read -p "Informe seu e-mail: " EMAIL
echo $EMAIL | grep -E '^([a-zA-Z0-9_-.])+@[0-9a-zA-Z.-]+\.[a-z]{2,3}$' \
&& echo "E-mail Aceito" && telefone || echo "E-mail Recusado" && email
}
telefone(){
read -p "Digite o seu telefone (xx)xxxx-xxxx: " TEL
echo $TEL | grep -E '^[(][0-9]{2}[)][0-9]{4}+-[0-9]{4}$' && \
echo "Telefone Aceito" && rg || echo  "Telefone Não Aceito" && telefone
}
rg(){
read -p "Digite o seu RG: "
echo $RG | grep -E '^[0-9]{2}\.[0-9]{3}\.[0-9]{3}-[0-9]'
echo "RG Aceito" && cpf || echo "RG Não Aceito" && rg
}
cpf(){
read -p "Digite o seu CPF: "
echo $CPF | grep -E '^[0-9]{3}\.[0-9]{3}\.[0-9]{3}-[0-9]'
echo "CPF Aceito" && data || echo "CPF Não Aceito" && cpf
}
data(){
read -p "Digite a sua data de nascimento (dd/mm/aaaa): "
echo $DATA | grep -E "^([0][1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/(19[0-9]{2}|200[0-9]|201[0-8]$)"
echo "Data aceita" && ip || echo "CPF Não Aceito" && data
}
ip(){
read -p "Digite o seu ip (EX: 192.168.0.1): "
echo $IP | grep -E '^([0-254]{1,3}\.){3}[0-254]{1,3}$'
echo "IP aceito" && mask || echo "Ip Não Aceito" && ip
}
mask(){
read -p "Digite a sua mascara (EX: 255.255.255.0): "
echo $MASK | grep -E '^([0-255]{1,3}\.){3}[0-255]{1,3}$' &&
echo "Mascara aceita" || echo  "Mascara Não Aceita" && mask
echo "Cadastro Feito"
}
nome
