*** Settings ***
Documentation    Esta suíte testa a interação do usuário com o carrinho de compras da amazon.com.br
Resource         amazon_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar navegador

*** Test Cases ***
# Caso de teste 01 - Adicionar um produto ao carrinho de compras
#     [Documentation]    Esse teste verfica a adição de um produto ao carrinho de compras no site amazon.com.br
#     [Tags]    carrinho_de_compras
#     Dado que o usuário realiza a pesquisa pelo site "www.amazon.com.br" utilizando o chrome
#     E pesquisa por bola de futebol penalty no campo de busca na região superior do site
#     E clica no resultado do item da pesquisa
#     E clica no botão "Adicionar ao carrinho"
#     Então o produto deve ser adicionado ao carrinho
#     E a quantidade deve ser a mesma selecionada

# Caso de teste 02 - Adicionar mais de um produto ao carrinho de compras
#     [Documentation]    Este teste verifica se é possível adicionar mais de um produto ao carrinho de compras
#     [Tags]             carrinho_de_compras
#     Dado que o usuário realiza a pesquisa pelo site "www.amazon.com.br" utilizando o chrome
#     E pesquisa por bola de futebol penalty no campo de busca na região superior do site
#     E clica no resultado do item da pesquisa
#     E seleciona a quantidade 4
#     E clica no botão "Adicionar ao carrinho"
#     Então o produto deve ser adicionado ao carrinho
#     E a quantidade deve ser igual a 4
    
# Caso de teste 03 - Adicionar produtos diferentes no carrinho de compra
#     [Documentation]    Este teste verifica se é possível adicionar produtos diferentes ao carrinho de compras
#     [Tags]             carrinho_de_compras
#     Dado que o usuário realiza a pesquisa pelo site "www.amazon.com.br" utilizando o chrome
#     E pesquisa por bola de futebol penalty no campo de busca na região superior do site
#     E clica no resultado do item da pesquisa
#     E clica no botão "Adicionar ao carrinho"
#     E pesquisa por outro produto no campo de busca na região superior do site
#     E clica no resultado do item da pesquisa
#     E seleciona a quantidade 2
#     E clica no botão "Adicionar ao carrinho"
#     Então o produto deve ser somado ao carrinho junto ao primeiro produto
#     E a quantidade de itens deve ser igual a soma dos dois produtos selecionados

Caso de teste 04 - Editar quantidade dos produtos selecionados após adicionar ao carrinho
    [Documentation]    Este teste valida a edição de quantidade dos produtos selecionados ao carrinho de compras
    [Tags]             carrinho_de_compras
    Dado que o usuário realiza a pesquisa pelo site "www.amazon.com.br" utilizando o chrome
    E pesquisa por bola de futebol penalty no campo de busca na região superior do site
    E clica no resultado do item da pesquisa
    E clica no botão "Adicionar ao carrinho"
    E edita a quantidade de 3 unidades 
    Então a quantidade deve ser igual a 3 itens

# Caso de teste 05 - Exclusão do produto no carrinho de compras
#     [Documentation]    Este teste vaida a exlusão de produto do carrinho de compras
#     [Tags]             carrinho_de_compras
#     Dado que o usuário realiza a pesquisa pelo site "www.amazon.com.br" utilizando o chrome
#     E pesquisa por bola de futebol penalty no campo de busca na região superior do site
#     E clica no resultado do item da pesquisa
#     E clica no botão "Adicionar ao carrinho"
#     E clica no ícone do carrinho no canto superior direito
#     E clica no botão de excluir 
#     Então deve ser apresentada uma mensagem informando que o carrinho de compras está vazio
