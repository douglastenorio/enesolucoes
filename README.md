# enesolucoes
Plano de testes - Carrinho Amazon

Pré requisitos para a execução do projeto de automação:

1-Chromedriver Versão 114 (adicionar no path das variáveis de ambiente)
2-Google chrome Versão 117.0.5938.150
3-Python 3.11.5 ou mais atual (adicionar no path das variáveis de ambiente)
4-Pacote java 

Para esta automação, foi utilizado
IDE Visutal Studio Code
Plugin - Robot Framework Language Server 

Após a instalação dos itens acima seguir com os comandos via prompt de comando para intalação do robot framework demais bibliotecas
pip install robotframework 
pip install --upgrade robotframework-seleniumlibrary 
pip install robotframework-requests --pre

Comandos para execução do teste
Dentro do diretório 5-automation, execute o comando robot "-d evidencias .\amazon_testes.robot"
a suíte de testes será iniciada e as evidências seram armazenadas na pasta "evidencia"

Para visualizar o report e/o log do teste, basta que segure control e click em um dos dois caminhos que ficaram no terminal dentro da IDE ao final da execução do teste 
