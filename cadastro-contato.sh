#!/bin/bash

# Captura do nome usando inputbox
nome=$(dialog --inputbox "Nome do contato:" 10 40 3>&1 1>&2 2>&3)

# Captura do número de telefone usando inputbox
telefone=$(dialog --inputbox "telefone:" 10 40 3>&1 1>&2 2>&3)

# Exibe os dados inseridos
dialog --title "Informações inseridas" --msgbox "Nome: $nome\nTelefone: $telefone" 12 30

echo "$nome $telefone" >> ~/agenda-shell/contatos.txt

~/agenda-shell/menu.sh
