Feature: Cadastro de cliente na plataforma

    Como cliente da EBAC-SHOP
    Quero fazer concluir meu Cadastro
    Para finalizar minha compra

Background: 
Given ao acessar a tela de Cadastro

Scenario: Dados Obrigatórios

And não preencher todos os campos obrigatórios indicado com "*"
Then deve apresentar um alerta "É Obrigatório preencher todos os campos indicados com *"

Scenario: Email Invalido

And informar um e-mail com formato invalido
Then deve apresentar mensagem "E-mail informado é invalido, favor verificar"

Scenario: Campo vazio

And tentar cadastrar com algum campo vazio
Then deve exibir um alerta "Existe campos sem preenchimento, deseja seguir"
