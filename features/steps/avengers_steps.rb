Dado('que acesso a tela Avengers') do
    @nav.tap_hamburger
    @nav.tap_by_text("AVENGERS")
    @nav.tap_by_text("LISTA")
end
  
Quando('eu apago o Capitao America') do
    #start_x => Posicao inicial (HORIZONTAL)
    #start_y => Posicao inicial (VERTICAL)
    #offset_x => Posicao final (HORIZONTAL)
    #offset_y => Posicao final (VERTICAL)
    #duration => em milesegundos

    # Checkpoint para garantir que está na tela certa!
    find_element(id: "io.qaninja.android.twp:id/rvList")

    coord = { start_x: 0.93, start_y: 0.17, 
            offset_x: 0.47, offset_y: 0.17, 
            duration: 2000 }

    Appium::TouchAction.new.swipe(coord).perform
    find_element(id: "io.qaninja.android.twp:id/btnRemove").click
end
  
Entao('devo ver a seguinte mensagem: {string}') do |msg|
    msg_element = find_element(id: "io.qaninja.android.twp:id/snackbar_text")
    expect(msg_element.text).to eql msg
end