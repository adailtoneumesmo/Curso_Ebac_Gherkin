Feature: Cadastro de cliente na plataforma

    Como cliente da EBAC-SHOP
    Quero fazer concluir meu Cadastro
    Para finalizar minha compra

    Scenario: Dados Obrigatórios

Given ao acessar a tela de Cadastro
And não preencher todos os campos obrigatórios indicado com "*"
Then deve apresentar um alerta "É Obrigatório preencher todos os campos indicados com *"

Scenario: Email Invalido
Given ao acessar a tela de cadastro
And informar um e-mail com formato invalido
Then deve apresentar mensagem "E-mail informado é invalido, favor verificar"

Scenario: Campo vazio
Given ao acessar a tela de cadastro
And tentar cadastrar com algum campo vazio
Then deve exibir um alerta "Existe campos sem preenchimento, deseja seguir"