#language:pt

Funcionalidade: Login
    Sendo um usuário previamente cadastrado
    Quero acessar o sistema com meu email e senha
    Para que eu possa ter acesso as playlists do Parodify

    @smoke
    Cenário: Login do usuário

        Dado que acesso a página login
        Quando submeto minhas credenciais com: "testesqaninja1985@gmail.com" e "123456"
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de login

        Dado que acesso a página login
        Quando submeto minhas credenciais com: "<email>" e "<senha>"
        Então devo ver a mensagem de erro: "Opps! Dados de acesso incorretos!"

        Exemplos:
            | email                    | senha      |
            | fernando87878@bol.com.br | qwerty1234 |
            |                          |            |
            | fernando@bol.com.br      |            |
            |                          | qwerty1234 |
            | fernando87878@bol.com.br |            |