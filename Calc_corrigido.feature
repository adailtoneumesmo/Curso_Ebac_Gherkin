Feature: Calculadora

    Comao não seu fazer conta de cabeça
    Quera usar calculadora do sistema
    para calcular dois numeros

    Scenario: Somar dois numeros

        Given Quando acessar a Calculadora
        When Somar 2 + 2
        Then o resultado deve Ser 4

    Scenario Outline: Soma de dois numeros

        Given    somar <primeiro numero>
        And o <segundo numero>
        then deve apresentar o <resultado>

        Examples:
            | primeiro numero | segundo numero | resultado |
            | 2               | 2              | 4         |
            | 1               | -2             | -1        |
            | 2               | 3              | 5         |
            | 2               | 8              | 10        |
            | 3.5             | 3.87           | 7.37      |
            | 4               | 2              | 6         |
            | 4               | 4              | 8         |
            | 6               | 4              | 10        |
            | 2               | 7              | 9         |
            | 1               | 1              | 2         |
            | 3               | 6              | 9         |
            | -5              | 1              | 4         |
            | 10              | 10             | 20        |
            | 6.8             | -7.74          | -0.94     |

