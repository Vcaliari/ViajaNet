# language: pt
Funcionalidade: Comprar uma pasagem de aviao no site viajanet.com.br

  Contexto: Home do viajanet.com.br
    Dado que eu esteja na home do Viajanet

  Cenario: Comprar uma passagem com origem em Sao Paulo e destino em Buenos Aires
    Quando eu informar o local de origem
	E o local de destino
	E a data de ida
	E a data de volta
	E a quatidade de pessoas
	Entao o site deve me retornar varias opcoes de passagens
	Quando eu selecionar o primeiro voo
	Entao o site navega para a pagina de Informacoes da Compra
	Quando eu preencher o e-mail
	E as informacoes pessoais
	E selecionar a forma de pagamento cartao
	E preencher as informacoes do cartao
	E as informacoes de endereco
	E selecionar a opcao de seguro
	E selecionar a opcao de despacho de bagagem
	E concordar com as condicoes de compra
	Entao o site deve mostrar um resumo da passagem comprada
	E dizer que a compra da reserva solicitada esta em processamento
	