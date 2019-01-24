feature 'accepts two player names and prints them to the screen' do
  scenario do
    sign_in_and_play
    expect(page).to have_content 'John Doe vs Jane Smith'
  end
end
