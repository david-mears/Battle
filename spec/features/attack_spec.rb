feature 'attacks player 2' do
  scenario do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'John Doe attacks Jane Smith!'
  end
end
