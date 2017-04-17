#language: pt
#utf-8

Funcionalidade: Cadastro de funcionario
Eu como usuario do site
Quero cadastrar um novo empregado
Para editar um funcionario

@cadastro
Cenario: Cadastrar um novo empregado
Dado que esteja na pagina de cadastro
Quando os dados forem preenchidos corretamente
Então apresentara o cadastro realizado

@alteracao
Cenario: Alterar empregado cadastrado
Dado que eu tenha um empregado cadastrado
Quando eu alterar um empregado
Então o cadastro sera alterado
