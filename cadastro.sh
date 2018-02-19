#!/bin/bash
#Código de Cadastro
#Daniel Kardec

clear
echo "Cadastro do usuario"
nome(){
read -p "Digite o seu nome: " NAME
echo $NAME | grep -E '[0-9,.;:/?!@#$%"&*()_+=]'
echo -e "Nome Aceito" && email || echo "Nome Não Aceito" && nome
}
email(){
read -p "Informe seu e-mail: " EMAIL
echo $EMAIL | grep -E '^([a-zA-Z0-9_-.])+@[0-9a-zA-Z.-]+\.[a-z]{2,3}$' \
&& echo -e "E-mail Aceito" && telefone || echo -e "E-mail Recusado" && email
}
telefone(){
read -p "Digite o seu telefone (xx)xxxx-xxxx: " TEL
echo $TEL | grep -E '^[(][0-9]{2}[)][0-9]{4}+-[0-9]{4}$' && \
echo -e "Telefone Aceito" && rg || echo -e  "Telefone Não Aceito" && telefone
}
rg(){
read -p "Digite o seu RG: "
echo $RG | grep -E '^[0-9]{2}\.[0-9]{3}\.[0-9]{3}-[0-9]'
echo -e "RG Aceito" && cpf || echo -e "RG Não Aceito" && rg
}
cpf(){
read -p "Digite o seu CPF: "
echo $CPF | grep -E '^[0-9]{3}\.[0-9]{3}\.[0-9]{3}-[0-9]'
echo -e "CPF Aceito" || echo -e "CPF Não Aceito" && cpf
}
data(){
read -p "Digite a sua data de nascimento (dd/mm/aaaa): "
echo $DATA | grep -E
echo -e "Data aceita" && ip || echo -e "CPF Não Aceito" && data
}
ip(){
read -p "Digite o seu ip (EX: 192.168.0.1): "
echo $IP | grep -E
echo -e "IP aceito" && mask || echo -e "Ip Não Aceito" && ip
}
mask(){
read -p "Digite a sua mascara (EX: 255.255.255.0): "
echo $MASK | grep -E
echo -e "Mascara aceita" && fim || echo -e "Mascara Não Aceita" && mask
}
fim(){
echo "Cadastro Feito"
echo '$nome $email $telefone $rg $cpf $data $ip $mask' >  banco.txt
}
