def sign_in_and_play
  visit '/'
  fill_in 'Player 1', with: 'John Doe'
  fill_in 'Player 2', with: 'Jane Smith'
  click_button 'Submit'
  visit '/play'
end
