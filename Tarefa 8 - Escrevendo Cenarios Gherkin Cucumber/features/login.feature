#language: pt


  Funcionalidade: Login na platafora Ebac-Shop

    Como cliente da EBAC-SHOP
    Quero fazer o login (autenticação) na plataforma
    Para visualizar meus pedidos

  Contexto:
    Dado que acesso a pagina de login da aplicação

  Cenario: Login com dados Validos
    Dado que insiro meu login "testeqa@ebac-shop.com.br" e senha "FsCB1b%M%4"
    Quando clicar no botão login
    Entao devo conseguir me logar na aplicação e ser redirecionado para a pagina minha conta



  Cenario: Login com dados Invalidos
    Dado que insiro meu login "testeqa@ebac-shop.com.br" e senha "FsCB13"
    Quando clicar no botão login
    Entao deve ser apresentada uma mensagem de alerta "Erro: A senha fornecida para o e-mail testeqa@ebac-shop.com.br está incorreta. Perdeu a senha?"


  Cenario: Login com usuario inexistente
    Dado que insiro meu login "contanaoexiste@ebac-shop.com.br" e senha "naoexiste"
    Quando clicar no botão login
    Entao deve ser apresentada uma mensagem de alerta "Endereço de e-mail desconhecido. Verifique novamente ou tente seu nome de usuário."


