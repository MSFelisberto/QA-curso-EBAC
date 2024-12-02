#language: pt

  Funcionalidade: Configurar Produto

    Como cliente da EBAC-SHOP
    Quero Configurar meu produto de acordo com meu tamanho e gosto
    E escolher a quantidade
    Para depois inserir no carrinho

  Contexto:
    Dado que estou na pagina do produto


  Cenario: Configuro o produto de forma valida
    Dado escolho o tamanho do produto
    E escolho a cor do produto
    E escolho a quantidade do produto
    Quando clicar no botão comprar
    Entao o produto deve ser adicionado no carrinho

  Cenario: Configuro o produto de forma incorreta
    Dado escolho o tamanho do produto
    Quando tentar clicar no botão comprar
    Entao o botão comprar não permitirá adicionar o produto no carrinho


  Cenario: Tento adicionar mais do que dez produtos no carrinho
    Dado adiciono dez produtos no carrinho
    Quando tento adicionar o decimo primeiro produto no carrinho
    Entao deve apresentar um alerta de erro impedindo a adição no carrinho


  Cenario: Limpo a configuração do produto
    Dado escolho o tamho do produto
    E escolho a cor do produto
    E escolho a quantidade do produto
    Quando clicar no botão limpar
    Entao todas as configurações do produto devem ser limpas