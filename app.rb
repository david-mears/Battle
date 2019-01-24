require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params['Player 1'])
    $player_2 = Player.new(params['Player 2'])
    redirect 'play'
  end

  get '/play' do
    erb :play, { locals: { player_1_name: $player_1.name, player_2_name: $player_2.name } }
  end

  get '/attack' do
    $player_2.lose_hp(10)
    erb :attack, { locals: { player_1_name: $player_1.name, player_2_name: $player_2.name } }
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
