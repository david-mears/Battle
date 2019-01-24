feature 'attacks player 2' do
  scenario do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'John Doe attacks Jane Smith!'
  end
  scenario 'player 2 loses ten points' do
    sign_in_and_play
    before_health = $player_2.hp
    click_button 'Attack'
    expect($player_2.hp).to be < before_health
  end
end
