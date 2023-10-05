*** Settings ***
Library    SeleniumLibrary
Library    Screenshot
Library    Collections


*** Variables ***
${URL}    http://www.amazon.com.br

*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
     Maximize Browser Window  

Fechar navegador
    Close Browser

##Caso de teste 01
Dado que o usuário realiza a pesquisa pelo site "www.amazon.com.br" utilizando o chrome
    Go To    ${URL}
    Wait Until Element Is Visible    //a[@class='nav-logo-link nav-progressive-attribute']
    Capture Page Screenshot
  
E pesquisa por bola de futebol penalty no campo de busca na região superior do site
    Input Text    //input[contains(@type,'text')]    bola de futebol penalty
    Click Element    //input[contains(@type,'submit')]
    Wait Until Element Is Visible    //img[@data-image-index='1']
    Capture Page Screenshot 

E clica no resultado do item da pesquisa
    Click Element    //img[@data-image-index='1']
    Wait Until Page Contains    Adicionar ao carrinho
    Capture Page Screenshot
  
E clica no botão "Adicionar ao carrinho"
    Wait Until Element Is Visible    //input[contains(@title,'Adicionar ao carrinho')]
    Click Element    //input[contains(@title,'Adicionar ao carrinho')]
    Capture Page Screenshot
      
Então o produto deve ser adicionado ao carrinho
    Wait Until Element Is Visible    //div[contains(@class,'a-section a-padding-medium sw-atc-message-section')]
    Capture Page Screenshot
 
E a quantidade deve ser a mesma selecionada
    Click Element    //a[@class='nav-a nav-a-2 nav-progressive-attribute']
    Element Should Contain    //span[@class='a-button-text a-declarative'][contains(.,'Qtd:1')]    1
    Capture Page Screenshot
   
##Caso de teste 02

E seleciona a quantidade 4
    Select From List By Value    //select[@name='quantity']    4
    Capture Page Screenshot
    
 E a quantidade deve ser igual a 4
    Click Element    //a[@class='nav-a nav-a-2 nav-progressive-attribute']
    Element Should Contain    //span[@class='a-button-text a-declarative'][contains(.,'Qtd:4')]    4
    Capture Page Screenshot
    
##Caso de teste 03

E pesquisa por outro produto no campo de busca na região superior do site
    Input Text    //input[contains(@type,'text')]    bola de volei penalty
    Click Element    //input[contains(@type,'submit')]
    Wait Until Element Is Visible    //img[@data-image-index='1']
    Capture Page Screenshot   

E seleciona a quantidade 2
    Select From List By Value    quantity    2
    Capture Page Screenshot
    
Então o produto deve ser somado ao carrinho junto ao primeiro produto
    Wait Until Element Is Visible    //div[contains(@class,'a-section a-padding-medium sw-atc-message-section')]
    Capture Page Screenshot
  
E a quantidade de itens deve ser igual a soma dos dois produtos selecionados
    Click Element    //a[@class='nav-a nav-a-2 nav-progressive-attribute']
    Element Should Contain    //span[@class='a-button-text a-declarative'][contains(.,'Qtd:1')]    1
    Element Should Contain    //span[@class='a-button-text a-declarative'][contains(.,'Qtd:2')]    2
    Capture Page Screenshot
   
##Caso de testes 04

E edita a quantidade de 3 unidades
    Click Element    //a[contains(@aria-label,'1 item no carrinho')]
    Select From List By Value    quantity    3
    Capture Page Screenshot
    
Então a quantidade deve ser igual a 3 itens
    Element Attribute Value Should Be    quantity    value    3
    Capture Page Screenshot
    
##Caso de teste 05

E clica no ícone do carrinho no canto superior direito
    Click Element    //a[contains(@aria-label,'1 item no carrinho')]
    Capture Page Screenshot
    
E clica no botão de excluir 
    Click Element    //input[@value='Excluir']
    Wait Until Element Is Visible    //h1[@class='a-spacing-mini a-spacing-top-base'][contains(.,'Seu carrinho de compras da Amazon está vazio.')]
    Capture Page Screenshot
   
Então deve ser apresentada uma mensagem informando que o carrinho de compras está vazio
    Element Should Be Visible    //h1[@class='a-spacing-mini a-spacing-top-base'][contains(.,'Seu carrinho de compras da Amazon está vazio.')]
    Capture Page Screenshot
    