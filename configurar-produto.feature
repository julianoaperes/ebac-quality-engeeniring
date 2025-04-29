                  # language: pt

                  Funcionalidade: Configurar produtos do tipo Camiseta longline
                  Como cliente da EBAC-SHOP
                  Quero escolher a cor, o tamanho e quantidade
                  Para depois inserir no carrinho

                  Contexto: Dado que eu acesse qualquer produto do tipo Camiseta longline ja loja EBAC-SHOP

                  Cenário: Deve haver opções de cores, tamanhos e quantidade
                  Quando acessar a página do produto
                  Então a página deve exibir as opções de cores, tamanhos e quantidade disponíveis para o produto

                  Cenário: Escolher a cor do produto
                  Quando clicar na opção de cor do produto
                  Então deve ser exibido as opções de cores disponíveis do produto para selecionar

                  Cenário: Escolher o tamanho do produto
                  Quando clicar na opção de tamanho do produto
                  Então deve ser exibido as opções de tamanhos disponíveis do produto para selecionar

                  Cenário: Escolher a quantidade do produto
                  Quando clicar na opção de quantidade do produto
                  Então deve ser exibido as opções de quantidade disponíveis do produto para selecionar

                  Cenário: Limite máximo de 10 unidades do mesmo produto
                  Quando clicar na opção de quantidade do produto
                  Então não deve ser permitido selecionar mais de 10 unidades deste produto

                  Cenário: Deve ser obrigatório selecionar cor, tamanho e quantidade
                  Quando clicar no botão "Adicionar ao carrinho" sem selecionar cor, tamanho ou quantidade
                  Então deve ser exibida a mensagem de alerta

                  Cenário: Limpar filtros de cores, tamanhos e quantidade
                  Quando selecionar a primeira opção de qualquer caracteristicas do produto
                  Então deve ser exibido o botão "Limpar"
                  Quando clicar no botão "Limpar"
                  Então as opções de cores, tamanhos e quantidade devem ser limpas

                  Esquema do Cenário: Selecionar multiplas opções
                  Quando selecionar a <cor> do produto, o <tamannho>, a <quantidade> e clicar no botão "Adicionar ao carrinho"
                  Então eu devo ver a <mensagem> de sucesso

                  Exemplos:
                  | cor      | tamanho | quantidade | mensagem                                |
                  | Vermelho | G       | 3          | "Produto adicionado ao carrinho"        |
                  | vazio    | G       | 3          | "Selecione a cor"                       |
                  | Vermelho | vazio   | 3          | "Selecione o tamanho"                   |
                  | Vermelho | G       | vazio      | "Selecione a quantidade"                |
                  | vazio    | vazio   | vazio      | "Selecione a cor, tamanho e quantidade" |
                  | Azul     | M       | 10         | "Limite de 10 itens por produto"        |