Feature: Login na Plataforma

    Como cliente da EBAC-SHOP
    Quero fazer o login (autenticação) na plataforma
    Para visualizar meus pedidos

    Scenario Outline: login valido

        Given inserindo os dados de <usuário> valido
        And <senha> valida
        Then deve abrir a <tela>
        Examples:
            | Usuário               | Senha        | Tela     |
            | adailton@ebac.com.br  | 123@mudar    | Checkout |
            | pedro@ebac.com.br     | pedrinho$254 | Checkout |
            | julia@ebac.com.br     | ju!lia22     | Checkout |
            | joao@ebac.com.br      | j#ebac23     | Checkout |
            | silas@ebac.com.br     | sl@2023      | Checkout |
            | ana.clara@ebac.com.br | aninha@1222  | Checkout |
            | carla@ebac.com.br     | carla@9918   | Checkout |

    Scenario Outline: Login invalido

        Given ao inserir o <usuário> invalido
        Or <senha> invalida
        Then deve exibir o <alerta>
        Examples:
            | Usuário           | senha        | alerta                      |
            | adailton          | 123mudar     | "Usuário ou senha invalida" |
            | pedro@ebac.br     | pedrinho$254 | "Usuário ou senha invalida" |
            | julia@ebac.com    | ju@lia22     | "Usuário ou senha invalida" |
            | joao@ebac.com.br  | joao@ebac23  | "Usuário ou senha invalida" |
            | silas@ebac.com.br | sl@20        | "Usuário ou senha invalida" |
            | ana.clara         | aninha@1222  | "Usuário ou senha invalida" |
            | carla@ebac.net.br | carla@9918   | "Usuário ou senha invalida" |
