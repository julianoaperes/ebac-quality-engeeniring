      # language: pt

      Funcionalidade: Cadastro de usuário
      Como cliente da EBAC-SHOP
      Quero fazer concluir meu cadastro
      Para finalizar minha compra

      Contexto: Dado que estou na página de cadastro
      Cenário: UI página de registro
      Quando a página abrir
      Então a página deve mostrar o título "Registro", o campo "email" e "password" com placeholders "exemplo@exemplo.com" e "********", bem como "*" para obrigatoriedade, informações de senha e o botão "Cadastrar"
      # A senha deve conter: uma letra maiúscula, uma letra minúscula, um número e um caractere especial.

      Cenário: Cadastro com sucesso
      Quando inserir email e senha válidos, após clicar botão "Cadastrar"
      Então a página deve exibir a mensagem de alerta

      Cenário: Cadastro com email inválido
      Quando inserir email e senha inválidos, após clicar botão "Cadastrar"
      Então a página deve exibir a mensagem de alerta

      Cenário: Cadastro com senha inválida
      Quando inserir email e senha inválidos, após clicar botão "Cadastrar"
      Então a página deve exibir a mensagem de alerta

      Cenário: Cadastro com email já existente
      Quando inserir email já existente, senha válida e clicar no botão "Cadastrar"
      Então a página deve exibir a mensagem de alerta

      Cenário: Cadastrar com os campos vazios
      Quando clicar no botão "Cadastrar" com os campos vazios
      Então a página deve exibir a <mensagem> de alerta

      Esquema do Cenário: Multíplos cadastros
      Quando inserir <email>, <senha>, e clicar no botão "Cadastrar"
      Então a página deve exibir a <mensagem> de alerta

      Exemplos:
      | email                     | senha         | mensagem                                            |
      | vazio                     | vazio         | "Os campos email e senha são obrigatório"           |
      | vazio                     | Ab1$valida    | "O campo email é obrigatório"                       |
      | valido@exemplo.com        | vazio         | "O campo senha é obrigatório"                       |
      | valido@exemplo.com        | Ab1$valida    | "Cadastro realizado com sucesso"                    |
      | email.existente@teste.com | Ab1$valida    | "Email já cadastrado"                               |
      | www.invalido.com          | Ab1$valida    | "Email inválido"                                    |
      | valido@exemplo.com        | senhaInválida | "Senha inválida"                                    |
      | valido@exemplo.com        | Ab1$          | "Senha deve conter pelo menos 8 caracteres"         |
      | valido@exemplo.com        | Ab$Invalida   | "Senha deve conter pelo menos 1 número"             |
      | valido@exemplo.com        | Ab1Invalida   | "Senha deve conter pelo menos 1 caractere especial" |
      | valido@exemplo.com        | ab1$invalida  | "Senha deve conter pelo menos 1 letra maiúscula"    |
      | valido@exemplo.com        | AB1$INVALIDA  | "Senha deve conter pelo menos 1 letra minúscula"    |