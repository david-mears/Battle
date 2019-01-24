feature 'prints the current hp of player 2' do
  scenario do
    sign_in_and_play
    expect(page).to have_content($player_2.hp)
  end
end
