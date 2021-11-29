class HomePageCadastro < SitePrism::Page
  include Capybara::DSL

  #Elementos mapeados

  element :email, "#email"
  element :password, "#passwd"
  element :bt_logar, "#SubmitLogin"

  #Metodos
  def Login
    email.set "brunohenriqueq4@gmail.com"
    password.set "123456"
    bt_logar.click
  end
end
