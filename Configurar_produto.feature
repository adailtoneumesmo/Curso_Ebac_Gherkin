Feature: Configurar Produto

Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
e escolher a quantidade 
Para depois inserir no carrinho

Scenario: Configuração do produto

Given ao escolher um produto deve ser selecionado a cor
And tamanho
And quantidade
Then o produto pode ser gravado no carrinho

Scenario:  Quantidade permitida

Given Finalizado o pedido
When a quantidade informada maior que 10
Then deve apresentar uma "Você excedeu a quantidade máxima permitida de 10 produtos"

Scenario: Botão Limpar

Given selecione o botão "limpar"
Then deve voltar ao estado original do produto
