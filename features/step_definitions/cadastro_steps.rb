Dado("que acesso a página de cadastro") do
  visit "/"
  click_on "EXPERIMENTE AGORA"
  #sleep 5 temporio
end

Quando("submeto o meu cadastro com:") do |table|
  user = table.rows_hash
  apagarUser user[:email]
  sleep 2 #a exibição da tela está lenta, o que gera erro de validação por não encontrar o campo
  find("input[name*=email]").set user[:email]
  find("input[placeholder='Sua senha secreta']").set user[:senha]
  find("input[placeholder='Confirme a senha']").set user[:senha_confirma]
  #sleep 1 #devido à por lentidão da página
  click_on "Cadastrar"
end

Então("devo ser redirecionado para a área logada") do
  sleep 2 #a exibição da tela está lenta, o que gera erro de validação por não encontrar o campo
  expect(page).to have_css ".dashboard"
  #find('.dashboard') sem utilizar recursos do respect
  #sleep 2 #temporio
end

Então("devo ver a mensagem: {string}") do |expect_message|
  #sleep 1
  alert = find(".message p")
  expect(alert.text).to eql expect_message
end

Quando("acesso a página de cadastro") do
  steps %(
    Dado que acesso a página de cadastro
  )
end

Então("deve exibir o seguinte css: {string}") do |expect_css|
  expect(page).to have_css expect_css
end
