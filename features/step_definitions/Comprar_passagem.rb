Dado("que eu esteja na home do Viajanet") do
  @driver = Selenium::WebDriver.for :chrome
  @driver.get "http://viajanet.com.br"  
end

Quando("eu informar o local de origem") do
  @driver.find_element(:id, "inptorigin").send_keys("São Paulo")
end

Quando("o local de destino") do
  @driver.find_element(:id, "inptorigin").send_keys("Buenos Aires")
end

Quando("a data de ida") do
  date = Date.now   
  @driver.find_element(:id, "departureDate").send_keys(date)
end

Quando("a data de volta") do
  date = Date.now  
  @driver.find_element(:id, "arrivalDate").send_keys(date + 7)
end

Quando("a quatidade de pessoas") do
  @driver.find_element(:id, "drpAdultsQtd").send_keys(1)
end

Entao("o site deve me retornar varias opcoes de passagens") do
  @driver.find_element(:class, "btn-default btn-edit-super-data btn-reservation").displayed?
end

Quando("eu selecionar o primeiro voo") do
  @driver.find_element(:class, "btn-default btn-edit-super-data btn-reservation").click
end

Entao("o site navega para a pagina de Informacoes da Compra") do
  @driver.find_element(:class, "summary_containern").displayed?
end

Quando("eu preencher o e-mail") do
  @driver.find_element(:id, "my-account_email").send_keys("vhcaliari@gmail.com")
end

Quando("as informacoes pessoais") do
  @driver.find_element(:id, "nome_0").send_keys("Vitor")
  @driver.find_element(:id, "lastName_0").send_keys("Caliari")
  @driver.find_element(:id, "birth_0").send_keys("30/01/1999")
  @driver.find_element(:name, "gender_0").send_keys(0)
end

Quando("selecionar a forma de pagamento cartao") do
  @driver.find_element(:id, "card1").click
end

Quando("preencher as informacoes do cartao") do
  @driver.find_element(:id, "flag_card").send_keys(0)
  @driver.find_element(:id, "number_card-0").send_keys(1234567891234567)
  @driver.find_element(:id, "month-0").send_keys("01")
  @driver.find_element(:id, "year-0").send_keys(2025)
  @driver.find_element(:id, "codesecure_card-0").send_keys(555)
  @driver.find_element(:id, "name_card-0").send_keys("Vitor Hugo Caliari")
  @driver.find_element(:id, "cpf_card-0").send_keys("654.687.215-25")
end

Quando("as informacoes de endereco") do
  @driver.find_element(:id, "zipcode-0").send_keys("98752-542")
  @driver.find_element(:id, "address-0").send_keys("Rua Brasil")
  @driver.find_element(:id, "number_address-0").send_keys("100")
  @driver.find_element(:id, "complement-0").send_keys("Ap 10")
  @driver.find_element(:id, "neighborhood-0").send_keys("Centro")
  @driver.find_element(:id, "city-0").send_keys("São Caetano")
  @driver.find_element(:id, "state-0").send_keys("SP")
  @driver.find_element(:id, "contact_email").send_keys("vhcaliari@gmail.com")
  @driver.find_element(:id, "contact_email_confirm").send_keys("vhcaliari@gmail.com")
  @driver.find_element(:id, "contact_phone_0").send_keys(1)
  @driver.find_element(:id, "contact_phonenumber_0").send_keys("987564321")
end

Quando("selecionar a opcao de seguro") do
  @driver.find_element(:id, "notsecure").click
end

Quando("selecionar a opcao de despacho de bagagem") do
  @driver.find_element(:class, "ng-pristine ng-valid ng-not-empty ng-touched").click
end

Quando("concordar com as condicoes de compra") do
  @driver.find_element(:id, "accept-checkout").click
  @sriver.find_element(:class, "btn-default ng-scope").click
end

Entao("o site deve mostrar um resumo da passagem comprada") do
  pending # Write code here that turns the phrase above into concrete actions
end

Entao("dizer que a compra da reserva solicitada esta em processamento") do
  pending # Write code here that turns the phrase above into concrete actions
end