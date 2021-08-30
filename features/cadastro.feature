#language:pt

Funcionalidade: Cadastro de usuários
    Sendo um visitante do site Parodify
    Quero fazer o meu cadastro
    Para que eu possa ouvir minhas músicas favoritas

    Cenário: Cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | testesqaninja1985@gmail.com |
            | senha          | 123456                      |
            | senha_confirma | 123456                      |
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de cadastro

        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | <email>          |
            | senha          | <senha>          |
            | senha_confirma | <confirma_senha> |
        Então devo ver a mensagem: "<mensagem_saida>"

        Exemplos:
            | email                  | senha      | confirma_senha | mensagem_saida                       |
            |                        | qwerty1234 | qwerty1234     | Oops! Informe seu email.             |
            | teste124233@teste.com  |            |                | Oops! Informe sua senha.             |
            | fernando1234@gmail.com | qwerty1234 | abcd1234       | Oops! Senhas não são iguais.         |
            |                        |            |                | Oops! Informe seu email e sua senha. |
    Cenário: Validação do campo email

        Quando acesso a página de cadastro
        Então deve exibir o seguinte css: "input[type=email]"

