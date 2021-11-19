  When('I click on add') do
    visit '/'
    click_on 'Adicionar'
  end
  
  When('I make the record') do
    fill_in(placeholder:"Nome", with: "Jean Damasceno Pereira Lima")
    fill_in(placeholder:"Telefone", with: "85912345678")
    
    within('div.modal-footer') do
    click_on 'Adicionar'
    end
    sleep(10)
  end
 
  Then('I check if the record was saved') do
    expect(page).to have_button('Adicionar', disabled: true)
  end