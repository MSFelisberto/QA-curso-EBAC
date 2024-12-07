#language: pt

  #Com este cenário cuprimos dois criterios de aceitação
  #Utilizamos também outras fontes para tabelas na liguagem gherkin
  #https://cucumber.io/docs/gherkin/reference/
  Funcionalidade: Login na platafora Ebac-Shop

    Como cliente da EBAC-SHOP
    Quero fazer o login (autenticação) na plataforma
    Para visualizar meus pedidos

  Contexto:
    Dado que os seguintes usuarios estão tentando realizar login na plataforma
      | nome  | email               | senha       | mensagem                          |
      | Cleber  | cleber@ebac-shop.com.br    | 123456      | Usuário <nome> logado com sucesso |
      | Marcos | marcos@ebac-shop.com.br   | 321654      | Usuário <nome> logado com sucesso |
      | Antonio | antonio@ebac-shop.com.br | sdfsdfsdfsd | Usuário ou senha inválidos        |

  Cenário: Login de usuário com redirecionamento para a tela de checkout
        Quando o usuário informar o email <email> e senha <senha>
        Então o usuário <nome> deve ser redirecionado para a tela de checkout
            E a mensagem <mensagem> deve ser exibida na tela


