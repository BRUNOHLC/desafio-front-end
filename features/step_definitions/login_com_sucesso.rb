Dado("que o usuario esteja na pagina de login") do
  visit "/index.php?controller=authentication&back=my-account"
end

Quando("colocar suas credencias de usuario e senha") do
  @home = HomePageCadastro.new
  @home.Login()
end

Entao("verifica-se o login foi efetuado com sucesso") do
  page.has_text?("Welcome to your account. Here you can manage all of your personal information and orders.")
end
