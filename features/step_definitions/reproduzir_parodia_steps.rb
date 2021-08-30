Dado("Login com {string} e {string}") do |email, password|
  goto_login
  login_with(email, password)
  sleep 1
end

Dado("que eu gosto muito de {string}") do |cat|
  find("a[href='/search/new']").click
  find("img[src$='#{cat.downcase}.png']").click
  #sleep 10
end

Quando("toco a seguinte canção:") do |table|
  @parodia = table.rows_hash
  find("a", text: @parodia[:banda]).click
  musica = find(".song-item", text: @parodia[:parodia])
  musica.find(".fa-play-circle").click
  #sleep 5
end

Então("essa paródia deve ficar em modo de reprodução") do
  reproducao = find(".playing")
  expect(reproducao).to have_text @parodia[:parodia]
  #sleep 5
end

#para comentar em bloco utilizar '=begin' e '=end'
