#language: pt

@Compra_cheque

Funcionalidade: Efetuar compra de um produto com sucesso no boleto

-Exercendo um usuario externo
-Eu necessito realizar uma nova compra

Cenario: Comprar um produto

Dado que o usuario esteja na pagina de produtos
Quando selecionar o produto que deseja
E finalizar a compra
Entao verifica-se a compra foi efetuada com sucesso