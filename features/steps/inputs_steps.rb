Dado('que acesso a tela Botoes de Radio') do
    @nav.tap_hamburger
    @nav.tap_by_text("INPUTS")
    @nav.tap_by_text("BOTÕES DE RADIO")
end
  
  Quando('eu escolho a opcao Ruby') do
    @radio_locator = "//android.widget.RadioButton[contains(@text,'Ruby')]"
    find_element(xpath: @radio_locator).click
    
end
  
  Entao('esta opcao deve ser marcada') do
    @radio_result =find_element(xpath: @radio_locator)
    expect(@radio_result.checked).to eql "true"
end

Dado('que eu acesso a tela Checkbox') do
  @nav.tap_hamburger
  @nav.tap_by_text("INPUTS")
  @nav.tap_by_text("CHECKBOX")end

Quando('eu marco a opcao Ruby') do
  @checkbox_locator = "//android.widget.CheckBox[contains(@text,'Ruby')]"
  find_element(xpath: @checkbox_locator).click
end

Entao('esta opcao deve estar marcada') do
  @checkbox_result = find_element(xpath: @checkbox_locator)
  expect(@checkbox_result.checked).to eql "true"
end

Quando ('eu marco as seguintes techs:') do |table|
  @techs = table.hashes
  #log(@techs)

  @techs.each do |item|
    #log(item["tech"])
    checkbox_locator = "//android.widget.CheckBox[contains(@text,'#{item["tech"]}')]"
    find_element(xpath: checkbox_locator).click
  end
end

Entao ('todas essas opcao devem estar marcadas') do
  @techs.each do |item|
    checkbox_locator = "//android.widget.CheckBox[contains(@text,'#{item["tech"]}')]"
    checkbox_result = find_element(xpath: checkbox_locator)
    expect(checkbox_result.checked).to eql "true"
  end
end