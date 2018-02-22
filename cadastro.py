#!/usr/bin/python
#-*- coding: utf8 -*-


import os, re

def nome():
	Nome = raw_input("Nome: ")
	match = re.match ('^[a-zA-Z ]+$', Nome)
	if match:
		print 'Nome válido'
	else:
		print 'Nome inválido'
		print 'Digite novamente: '
		nome()
nome()

def email():
	Email = raw_input("E-mail: ")
	match = re.match ('^.{1,}@([A-Z|a-z]{1,})\.(com|com.br|br)', Email)
	if match:
		print "Email válido"
	else:
		print "Email Inválido"
		print "Digite novamente: "
		email()
email()

def telefone():
	Telefone = raw_input("Telefone (xx) xxxx-xxxx: ")
	match = re.match ('^[(][0-9]{2}[)][ ][0-9]{4}-[0-9]{4}$', Telefone)
	if match:
		print "Telefone Válido"
	else:
		print "Telefone Inválido"
		print "Digite novamente: "
		telefone()
telefone()

def rg():
	RG = raw_input("RG: ")
	match = re.match ('^[0-9]{2}\.[0-9]{3}\.[0-9]{3}-[0-9]|[xX]{1}', RG)
	if match:
		print "RG Válido"
	else:
		print "RG Inválido"
		print "Digite novamente: "
		rg()
rg()

def cpf():
	CPF = raw_input("CPF: ")
	match = re.match ('^[0-9]{3}\.[0-9]{3}\.[0-9]{3}-[0-9]|[xX]{1}', CPF)
	if match:
		print "CPF Válido"
	else:
		print "CPF Inválido"
		print "Digite novamente: "
		cpf()
cpf()

def data():
	Data = raw_input("Data: ")
	match = re.match ("^([0][1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/(19[0-9]{2}|200[0-9]|201[0-8]$)", Data)
	if match:	
		print "Data Válida"
	else:
		print "Data Inválida"
		print "Digite novamente: "
		data()
data()

def ip():
	IP = raw_input("IP: ")
	match = re.match ('^([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])(\.([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])){3}$', IP)
  	if match:
		print "IP Válido"
	else:
		print "IP Inválido"
		print "Digite novamente: "
		ip()
ip()

def masc():
	Masc = raw_input("Máscara: ")
	match = re.match ('^([0-255]{1,3}\.){3}[0-255]{1,3}$', Masc)
   	if match:
		print "Máscara Válida"
		print "Cadastro Feito"
	else:
    		print "Máscara Inválida"
		masc()
masc()
