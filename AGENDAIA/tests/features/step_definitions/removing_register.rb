When('I click on delete') do
    visit '/'
    within 'table' do
        find('td', :text => 'X').click 
      end
      sleep(10)
  end
  
  Then('I check if the record was removed') do
    expect(page).to_not have_content('X')
    sleep(5)
end

