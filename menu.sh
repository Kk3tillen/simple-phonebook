#!/bin/bash

while : ; do

    resposta=$(
      dialog --stdout               \
             --title 'Lista Telefônica'  \
             --menu 'escolha uma das opções' \
            0 0 0                   \
            1 'Adicionar um contato' \
            2 'listar contatos'  \
            0 'Sair'                )

   
    [ $? -ne 0 ] && break

    case "$resposta" in
         1) ~/simple-phonebook/cadastro-contato.sh ;;
         2) dialog --textbox ~/simple-phonebook/testList.sh 20 40 ;;
         0) break ;;
    esac

done

echo 'temai!'
