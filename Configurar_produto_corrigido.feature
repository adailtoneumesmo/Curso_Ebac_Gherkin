#language: pt

Funcionalidade: Configurar produto

Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
e escolher a quantidade
para depois inserir no carrinho

Cenário: Configuração do produto

Dado selecionado o produto
Quando escolher a cor e tamanho
Então deve iformar a quantidade e inserir carrinho.

Cenário: Quantidade permitida

Dado finalizado a configuração do produto
Quando selecionado a quantidade maior que 10
Então o sistema deve apresentar uma notificação "Você excedeu a quantidade máxima permitida de 10 produtos".

Cenário: Botão limpar

Dado Canfigurado o produto
Quando acionar o botão "Limpar"
Então deve voltar ao estado original do produto
