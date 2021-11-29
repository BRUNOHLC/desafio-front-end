class HomePageCadastro < SitePrism::Page
  include Capybara::DSL

  # Informaçoes pessoais

  element :email_cadastral, "#email_create"
  element :bt_criar_conta, "#SubmitCreate"
  element :check_genero_masculino, "#id_gender1"
  element :check_genero_femininho, "#id_gender2"
  element :first_name, "#customer_firstname"
  element :last_name, "#customer_lastname"
  element :email, "#email"
  element :password, "#passwd"
  element :dia_nascimento, "#days > option:nth-child(30)"
  element :mes_nascimento, "#months > option:nth-child(11)"
  element :ano_nascimento, "#years > option:nth-child(34)"
  element :check_assinatura, "#uniform-newsletter" #allow_label_click: true
  element :check_ofertas, "#uniform-optin" #allow_label_click: true
  # Endereço
  element :companhia, "#company"
  element :endereco_1, "#address1"
  element :endereco_2, "#address2"
  element :cidade, "#city"
  element :estado, "#id_state > option:nth-child(18)"
  element :cep, "#postcode"
  element :pais, "#id_country"
  element :adicionar_informacao, "#other"
  element :telefone_casa, "#phone"
  element :telefone_celular, "#phone_mobile"
  element :endereco_alternativo, "#alias"
  element :bt_registrar, "#submitAccount"

  #metodos
  def nova_conta
    sleep (2)
    email_cadastral.set Faker::Internet.email
    bt_criar_conta.click
    check_genero_masculino.click
    first_name.set "Bruno"
    last_name.set "Henrique"
    email.click
    password.set "123456"
    dia_nascimento.click
    mes_nascimento.click
    ano_nascimento.click
    check_ofertas.click
    check_assinatura.click
    sleep (2)
  end

  def nova_conta_endereco
    companhia.set "LINX"
    endereco_1.set "Qn 27 conjunto 8 lote 07"
    endereco_2.set "apt 101"
    cidade.set "Brasilia"
    estado.click
    cep.set "00000"
    #pais.click
    adicionar_informacao.set "desafio"
    telefone_casa.set "(61)3333-1234"
    telefone_celular.set "(61)99999-9999"
    endereco_alternativo.set "Rua 1 Avenidade 1"
    bt_registrar.click
    sleep (4)
  end
end
