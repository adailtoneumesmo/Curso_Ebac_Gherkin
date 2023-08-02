#language: pt

Funcionalidade: Cadastro de cliente na plataforma

Como cliente da EBAC-SHOP
Quero fazer consluir meu Cadastro
Para finalizar minha compra

Contexto:
Dado ao acessar a tela de Cadastro

Cenário: Dados obrigatorios

Quando não preencher todos os campos obrigatórios indicado com "*"
Então deve apresentar um alerta "É obrigatorio preencher todos os campos indicado com "*""

Cenário: Email invalido

Quando informar um e-mail com a formatação invalida
Então deve apresentar o alerta "E-mail informado invalido, favor verificar"

Cenário: Campo vazio

Quando seguir o cadastro contendo campos vazios
Então deve apresentar o alerta "Existe campos sem preenchimento, deseja segui dessa forma?"
