#language: pt
#uft-8

Funcionalidade: Cadastro de Funcionario
Eu como admin
Quero cadastrar e alterar funcionario
Para manter os dados no banco de dados

Cenario: Cadastrar Novo Funcionario
	Dado que esteja na home so site da empresa
	Quando realizar o cadastro 
	Entao apresentar a mensagem de sucesso

Cenario: Alterar Cadastro Funcionario
	Dado que esteja na home do site
	Quando alterar o cadastro 
	Entao realizar a alteracao
	
