feature 'prints the current score of player 2' do
  scenario do
    sign_in_and_play
    expect(page).to have_content('Jane Smith: 17 HP')
  end
end
