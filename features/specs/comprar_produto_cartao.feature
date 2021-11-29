#language: pt

@Compra_cartao

Funcionalidade: Efetuar compra de um produto com sucesso no Cartao

-Exercendo um usuario externo
-Eu necessito realizar uma nova compra no cartao

Cenario: Comprar um produto no cartao

Dado que o usuario encontra-se na pagina de produtos 
Quando capturar o produto que desejavel
E finalizar a compra com cartao
Entao e solicitada a verificacao para saber se a compra foi efetuada com sucesso