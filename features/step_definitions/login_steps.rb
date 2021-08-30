Dado("que acesso a página login") do
  goto_login
end

Quando("submeto minhas credenciais com: {string} e {string}") do |email, password|
  login_with(email, password)
end

Então("devo ver a mensagem de erro: {string}") do |expect_message|
  #sleep 1
  expect(login_alert).to eql expect_message
end
