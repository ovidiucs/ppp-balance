#!/bin/bash -x

# Constantinescu Ovidiu 
# Data: Nov 5 2012
# Scop - monitorizare tabele de rutare
# Descriere: La fiecare secunda verifica a) daca exista ruta in tabela de rutare b) daca exista conexiunea ppp
# Locatie: cron job ?

# Variabile

d='1'
GW='64'
# Verifica Tabela

while  [ $d -le 8 ]
do 
	if [[ -z $( ip route show table d$d ) ]]
	then
		ip route add default  via 10.64.64.$GW table d$d
	fi
	d=$(($d + 1))
	GW=$(($GW + 1))	
done
exit 0

