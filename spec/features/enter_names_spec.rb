feature 'accepts two player names and prints them to the screen' do
  scenario do
    visit ('/')
    fill_in('Player 1', with: 'John Doe')
    fill_in('Player 2', with: 'Jane Smith')
    click_button('Submit')
    expect(page).to have_content 'John Doe vs Jane Smith'
  end
end
