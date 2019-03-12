<# 
Feito por: Jhones Petter e Ronnie Pereira
Versão: 0.5
Objetivo: Gerar um tracert e enviar para o Zabbix
#> 

param($destino)

$traceRoute = (tracert -d $destino)
$saida_para_log= $traceRoute[4..($traceRoute.Length-3)]
$temp = echo $destino | ForEach-Object {
    $_.split(".")[0]
}

$saida_para_log | Out-File C:\zabbix\tracert_$temp.txt