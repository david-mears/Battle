feature 'Player' do
  scenario 'returns the player name' do
    sign_in_and_play
    expect($player_1.name).to eq 'John Doe'
  end
end
