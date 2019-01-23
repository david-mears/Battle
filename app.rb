require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    player_1_name = params['Player 1']
    player_2_name = params['Player 2']
    p params
    erb :play, { locals: { player_1_name: player_1_name, player_2_name: player_2_name } }
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
