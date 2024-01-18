#!/bin/bash

nome=$(dialog --inputbox "Nome do contato:" 10 40 3>&1 1>&2 2>&3)

telefone=$(dialog --inputbox "telefone:" 10 40 3>&1 1>&2 2>&3)

dialog --title "Informações inseridas" --msgbox "Nome: $nome\nTelefone: $telefone" 12 30

echo "$nome $telefone" >> ~/simple-phonebook/contatos.txt

~/simple-phonebook/menu.sh
