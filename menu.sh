
while : ; do

    resposta=$(
      dialog --stdout               \
             --title 'Lista Telefônica'  \
             --menu 'escolha uma das opções' \
            0 0 0                   \
            1 'Adicionar um contato' \
            2 'listar contatos'  \
            0 'Sair'                )

    # Ela apertou CANCELAR ou ESC, então vamos sair...
    [ $? -ne 0 ] && break

    # De acordo com a opção escolhida, dispara programas
    case "$resposta" in
         1) ~/agenda-shell/cadastro-contato.sh ;;
         2) ~/agenda-shell/lista.sh ;;
         0) break ;;
    esac

done

echo 'temai!'
