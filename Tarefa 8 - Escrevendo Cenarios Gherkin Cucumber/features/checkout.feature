#language: pt

  Funcionalidade: Tela de cadastro - Checkout

    Como cliente da EBAC-SHOP
    Quero fazer e concluir meu cadastro
    Para finalizar minha compra

  Contexto:
    Dado que adiciono um produto no carrinho
    Quando acessar o carrinho
    E clicar no botao Concluir Compra
    Entao sou redirecionado para a pagina de checkout

  Esquema do Cenario: Preencho formulario de checkout corretamente
    Dado que preencho o campo <nome> e <sobrenome>
    E escolho o <pais>
    E preencho o campo <endereço>
    E preencho o campo <cidade>
    E escolho o <estado>
    E preencho o campo <cep>
    E preencho o campo <telefone>
    E preencho o campo <email>
    Quando clico no checkmark dos termos e condiçoes
    E clico no botão Finalizar Compra
    Entao minha compra deve ser realizada



    Exemplos:
    |nome|sobrenome|pais|endereço|cidade|estado|cep|telefone|email|
    |João|	Silva   |	Brasil|	Rua das Flores, 123|	São Paulo|	São Paulo|	01001-000	|(11) 98765-4321	|joao.silva@example.com|
    |Maria|	Oliveira|	Brasil|	Av. Brasil, 456|	Rio de Janeiro|	Rio de Janeiro|	20001-000	|(21) 99876-5432	|maria.oliveira@example.com|
    |Pedro	|Santos	|Brasil	|Rua do Sol, 789	|Belo Horizonte	|Minas Gerais	|30101-000	|(31) 91234-5678	|pedro.santos@example.com|
    |Ana	|Costa	|Brasil	|Av. Paulista, 321	|São Paulo	|São Paulo	|01311-000	|(11) 92345-6789	|ana.costa@example.com|
    |Carlos	|Almeida	|Brasil	|Rua das Palmeiras, 654	|Curitiba	|Parana	|80010-000	|(41) 96543-2101	|carlos.almeida@example.com|
    |Fernanda	|Lima	|Brasil	|Av. Ipiranga, 1010	|Porto Alegre	|Rio Grande do Sul	|90001-000	|(51) 99888-1234	|fernanda.lima@example.com|
    |Bruno	|Rocha	|Brasil	|Rua da Liberdade, 222	|Recife	|Pernambuco	|50001-000	|(81) 93456-7890	|bruno.rocha@example.com|
    |Camila	|Barbosa	|Brasil	|Av. Santos Dumont, 777	|Fortaleza	|Ceara	|60001-000	|(85) 97654-3210	|camila.barbosa@example.com|
    |Felipe	|Souza	|Brasil	|Rua das Acácias, 333	|Salvador	|Bahia	|40001-000	|(71) 94567-8901	|felipe.souza@example.com|
    |Gabriela	|Ribeiro	|Brasil	|Av. Presidente Vargas, 88	|Brasília	|Distri Federal	|70001-000	(|61) 93456-7890	|gabriela.ribeiro@example.com|

    Cenario: Preencho o formulario informando um email incorreto
      Dado que preencho o campo "teste" e "sobrenome do teste"
      E escolho o  pais "Brasil"
      E preencho o campo endereço "rua do teste"
      E preencho o campo Cidade "Sao Paulo"
      E escolho o estado "Sao Paulo"
      E preencho o campo cep "01001-000"
      E preencho o campo telefone "(11) 98765-4321"
      E preencho o campo email "emailformatoincorreto"
      Quando clico no checkmark dos termos e condiçoes
      E clico no botão Finalizar Compra
      Entao deve ser apresentado um alerta informando que o campo email é invalido

    Cenario: Preencho o formulario sem informar um dos dados obrigatorios
      Dado que preencho o campo "teste" e "sobrenome do teste"
      E escolho o  pais "Brasil"
      E preencho o campo endereço "rua do teste"
      E preencho o campo Cidade "Sao Paulo"
      E escolho o estado "Sao Paulo"
      E preencho o campo cep "01001-000"
      E preencho o campo telefone "(11) 98765-4321"
      Quando clico no checkmark dos termos e condiçoes
      E clico no botão Finalizar Compra
      Entao deve ser apresentado um alerta informando que o campo Email é um campo obrigatorio
