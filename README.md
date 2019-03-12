


Produzido por: Ronnie Pereira

Objetivo: Enviar o traceroute para o zabbix, a fim de monitorar a rota do cliente
Obs: Esse template não deve ser utilizado em larga escala, por se tratar de um tracert e a informação ser em texto puro, ocupa mais espaço no banco do Zabbix que o normal

Configuração:
* Mover a pasta scripts para dentro de C:\zabbix\
* Atribuir template para o host

Monitorar rota para destino diferente:
* Copie os itens "Tracert - Executa ação" e "Tracert - terra.com.br"
* Edite a chave do item "Tracert - Executa ação" que voce acabou de copiar, alterando o parametro '-destino'
* No item "Tracert - terra.com.br" que você copiou, altere o nome e dentro da chave altere o nome do arquivo "C:\zabbix\tracert_terra.log" para "C:\zabbix\tracert_<dominio-sem-".com">.txt
