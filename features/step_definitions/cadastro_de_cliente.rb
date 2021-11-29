Dado("que o usuario na esteja na pagina para criar uma nova conta") do
  visit "/index.php?controller=authentication&back=my-account"
end

Quando("preencha todos os campos") do
  @home = HomePageCadastro.new
  @home.nova_conta()
  @home.nova_conta_endereco()
end

Entao("verifica-se se o cadastro foi concluido com sucesso") do
  page.has_text?("Welcome to your account. Here you can manage all of your personal information and orders.")
end
