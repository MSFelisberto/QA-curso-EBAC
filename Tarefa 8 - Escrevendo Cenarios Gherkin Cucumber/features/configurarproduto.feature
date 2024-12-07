#language: pt

#Quando possuimos algum cenário que demanda muitos Given(Dado), And(E) e Then(Entao) podemos utilizar um asterisco(*) para mantermos a fluidez do documento, deixando-o mais facil de ler.
#https://cucumber.io/docs/gherkin/reference/

  Funcionalidade: Configurar Produto

    Como cliente da EBAC-SHOP
    Quero Configurar meu produto de acordo com meu tamanho e gosto
    E escolher a quantidade
    Para depois inserir no carrinho

    Contexto:
        Dado que estou na página de configuração do produto


    Esquema do Cenário: Configuração do produco de a cordo com meu gosto e tamanho
        Quando clico no botão selecionar <opcao>
        Então o sistema deve manter selecionado <opcao> do produto
            E com o botão comprar deve ficar destacado
       
        
        Exemplos:
            | opcao              |
            | cor                |
            | tamanho            |
            | quantidade_produto |



    Esquema do Cenário: Seleção de produtos com tamanho e cor diferentes
        Quando seleciono uma blusa da cor <cor>
            E tamanho <tamanho>
            * adiciono a quantidade <quantidade>
        Então o sistema deve acescentar o produto no carrinho

        Exemplos:
            | cor      | tamanho | quantidade |
            | azul     | M       | 1          |
            | azul     | G       | 2          |
            | azul     | GG      | 3          |
            | vermelho | M       | 1          |
            | amarelo  | G       | 2          |
            | verde    | GG      | 3          |

    Cenário: limpar configuração do produto selecionado
        Quando clico no botão limpar configuração
        Então o sistema deve limpar a configuração do produto
            E a quantidade do produto deve ser 1
            * a cor do produto não deve estar selecionada
            * o tamanho do produto não deve estar selecionado
