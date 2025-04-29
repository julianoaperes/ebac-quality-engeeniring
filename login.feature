                  # language: pt

                  Funcionalidade: Login
                  Como cliente da EBAC-SHOP
                  Quero fazer o login/autenticação na plataforma
                  Para visualizar meus pedidos

                  Contexto:
                  Dado que eu estou na página de login da EBAC-SHOP
                  Então devo visualizar o campo email e senha
                  E o botão de login

                  Cenário: Cenário: Login com email e senha válidos
                  Quando inserir um email, senha e clicar no botão de login
                  Então deve ser exibida a mensagem de boas-vindas: "Bem-vindo!"

                  Cenário: Login com email inválido
                  Quando inserir um email inválido, senha válida, e clicar no botão de login
                  Então deve ser exibida a mensagem de erro "Erro: email inválido"

                  Cenário: Login com senha inválida
                  Quando eu inserir um email válido, senha inválida e clicar no botão de login
                  Então deve ser exibida a mensagem de erro "Erro: senha inválida"

                  Cenário: Login com campos vazios
                  Quando clicar no botão de login com todos os campos vazios
                  Então  deve ser exibida a mensagem de erro "Erro: campos obrigatórios"

                  Cenário: Login com email e senha inválidos
                  Quando inserir um email e senha inválidos e clicar no botão de login
                  Então  deve ser exibida a mensagem de erro "Erro: email e senha inválidos"

                  Esquema do Cenário: Logar com multiplos usuários
                  Quando eu inserir um <email>, <senha> e clicar no botão de login
                  Então  deve ser exibida a <mensagem>

                  Exemplos:
                  | email            | senha         | mensagem                         |
                  | valido@teste.com | senhaValida   | Bem-vindo!                       |
                  | www.invalido.com | senhaInvalida | Erro: email e senha inválidos    |
                  | vazio            | vazio         | Erro: campos obrigatórios        |
                  | valido@teste.com | senhaInvalida | Erro: senha inválidos            |
                  | www.invalido.com | senhaValida   | Erro: email inválido             |
                  | vazio            | senhaValida   | Erro: campo email é obrigatórios |
                  | valido@teste.com | vazio         | Erro: campo senha é obrigatórios |