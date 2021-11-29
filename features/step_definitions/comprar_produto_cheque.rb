Dado("que o usuario esteja na pagina de produtos") do
  visit "/"
end

Quando("selecionar o produto que deseja") do
  @home = HomePageCadastro.new
  @home.Selecionar_Produtos()
  @home.Login()
end

Quando("finalizar a compra") do
  @home.Endereco()
  @home.Frete()
  @home.Pagamento_Boleto()
end

Entao("verifica-se a compra foi efetuada com sucesso") do
  page.has_text?("Your order on My Store is complete.")
end
