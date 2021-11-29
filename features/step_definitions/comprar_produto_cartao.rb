Dado("que o usuario encontra-se na pagina de produtos") do
  visit "/"
end

Quando("capturar o produto que desejavel") do
  @home = HomePageCadastro.new
  @home.Selecionar_Produtos()
  @home.Login()
end

Quando("finalizar a compra com cartao") do
  @home.Endereco()
  @home.Frete()
  @home.Pagamento_Cartao()
end

Entao("e solicitada a verificacao para saber se a compra foi efetuada com sucesso") do
  page.has_text?("Your order on My Store is complete.")
end
