            #language: pt

            Funcionalidade: Login na plataforma

            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Cenário: Login na plataforma

            Dado inserir meu dados para login
            Quando os dados são validados
            Então deve apresentar a tela de Checkout.

            Cenário: Login valido

            Dado inserido um <usuário> valido
            Quando a <senha> é validada
            Então deve abrir a <tela>
            Exemplos:
            | Usuário               | Senha        | Tela     |
            | adailton@ebac.com.br  | 123@mudar    | Checkout |
            | pedro@ebac.com.br     | pedrinho$254 | Checkout |
            | julia@ebac.com.br     | ju!lia22     | Checkout |
            | joao@ebac.com.br      | j#ebac23     | Checkout |
            | silas@ebac.com.br     | sl@2023      | Checkout |
            | ana.clara@ebac.com.br | aninha@1222  | Checkout |
            | carla@ebac.com.br     | carla@9918   | Checkout |

            Cenário: Login invalido

            Dado inserido um <usuário> invalido
            Ou a <senha> é invalida
            Então deve exibir o <alerta>
            Exemplos:

            | Usuário           | senha        | alerta                      |
            | adailton          | 123mudar     | "Usuário ou senha invalida" |
            | pedro@ebac.br     | pedrinho$254 | "Usuário ou senha invalida" |
            | julia@ebac.com    | ju@lia22     | "Usuário ou senha invalida" |
            | joao@ebac.com.br  | joao@ebac23  | "Usuário ou senha invalida" |
            | silas@ebac.com.br | sl@20        | "Usuário ou senha invalida" |
            | ana.clara         | aninha@1222  | "Usuário ou senha invalida" |
            | carla@ebac.net.br | carla@9918   | "Usuário ou senha invalida" |
