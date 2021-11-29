class HomePageCadastro < SitePrism::Page
  include Capybara::DSL

  #Elementos mapeados (login)
  element :email, "#email"
  element :password, "#passwd"
  element :bt_logar, "#SubmitLogin"

  #Produto
  element :produto1, "#homefeatured > li:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > a:nth-child(1)"
  element :produto2, "#homefeatured > li:nth-child(3) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > a:nth-child(1)"
  element :bt_adicionar, " #add_to_cart"
  element :bt_continuar_comprando, "#layer_cart > div.clearfix > div.layer_cart_cart.col-xs-12.col-md-6 > div.button-container > span > span > i"
  element :pagina_inicial, "#header_logo > a > img"
  element :bt_check_out, "#layer_cart > div.clearfix > div.layer_cart_cart.col-xs-12.col-md-6 > div.button-container > a"
  element :bt_check_resumo, "#center_column > p.cart_navigation.clearfix > a.button.btn.btn-default.standard-checkout.button-medium"
  element :texto_endereco, "#ordermsg > textarea"
  element :bt_check_out_endereco, "div#center_column>form>p>button>span"
  element :check_frete, ".checkbox > label:nth-child(2)"
  element :bt_check_out_frete, "button.button:nth-child(4) > span:nth-child(1) > i:nth-child(1)"
  element :bt_pagamento_boleto, ".cheque"
  element :bt_concluir_pagamento, "button.button-medium > span:nth-child(1) > i:nth-child(1)"
  #Metodos

  def Selecionar_Produtos
    #pagina_inicial.click
    produto1.click
    bt_adicionar.click
    bt_check_out.click
    bt_check_resumo.click

    #bt_continuar_comprando.click
    #pagina_inicial.click
    #produto2.click
    #bt_adicionar.click
    #bt_check_out.click
  end

  def Login
    email.set "brunohenriqueq4@gmail.com"
    password.set "123456"
    bt_logar.click
  end

  def Endereco
    texto_endereco.set "Desafio Linx Bruno Henrique"
    bt_check_out_endereco.click
  end

  def Frete
    check_frete.click
    bt_check_out_frete.click
  end

  def Pagamento_Boleto
    bt_pagamento_boleto.click
    bt_concluir_pagamento.click
  end
end
