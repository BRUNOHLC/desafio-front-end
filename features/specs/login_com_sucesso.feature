#language: pt

@Login_com_Sucesso
Funcionalidade: Efetuar um login com sucesso

-Exercendo um usuario externo
-Efetue um login com sucesso

Cenario: Logar na pagina com sucesso

Dado que o usuario esteja na pagina de login
Quando colocar suas credencias de usuario e senha
Entao verifica-se o login foi efetuado com sucesso