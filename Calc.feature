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
            | "2"             | "2"            | "4"       |
            | "1"             | "2"            | "3"       |
            | "2"             | "3"            | "5"       |
            | "2"             | "8"            | "10"      |
            | "3"             | "3"            | "6"       |
            | "4"             | "2"            | "6"       |
            | "4"             | "4"            | "8"       |
            | "6"             | "4"            | "10"      |
            | "2"             | "7"            | "9"       |
            | "1"             | "1"            | "2"       |
            | "3"             | "6"            | "9"       |
            | "5"             | "1"            | "6"       |
            | "10"            | "10"           | "20"      |
            | "6"             | "7"            | "11"      |
            | "8"             | "8"            | "16"      |
            | "9"             | "9"            | "18"      |
            | "7"             | "7"            | "14"      |
            | "6"             | "8"            | "14"      |
            | "7"             | "8"            | "15"      |
            | "2"             | "9"            | "11"      |

