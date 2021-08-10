#language: pt

Funcionalidade: Inputs
    @radio
    Cenario: Radio Button
        
        Dado que acesso a tela Botoes de Radio
        Quando eu escolho a opcao Ruby
        Entao esta opcao deve ser marcada

    @checkbox
    Cenario: Checkbox
        
        Dado que eu acesso a tela Checkbox
        Quando eu marco a opcao Ruby
        Entao esta opcao deve estar marcada

    @checkbox2
    Cenario: Todas as techs que usam o Appium
        
     Dado que eu acesso a tela Checkbox
     Quando eu marco as seguintes techs:
        |tech|
        |Ruby|
        |Java|
        |Python|
        |Javascript|
        |C#|
        |Robot Framework|
    Entao todas essas opcao devem estar marcadas