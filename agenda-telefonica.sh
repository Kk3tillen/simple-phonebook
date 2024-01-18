#!/bin/bash

dialog --inputbox 'Digite o nome: ' 0 0
read NOME
dialog --inputbox 'Informe o telefone: ' 0 0
read TEL
echo "$NOME $TEL" >> ~/agenda-shell//contatos.txt
cat ~/agenda-shell/lista.txt
dialog --msgbox 'minha primeira tela' 5 40
