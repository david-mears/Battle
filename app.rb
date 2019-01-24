require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params['Player 1']
    session[:player_2_name] = params['Player 2']
    redirect 'play'
  end

  get '/play' do
    erb :play, { locals: { player_1_name: session['player_1_name'], player_2_name: session['player_2_name'] } }
  end

  get '/attack' do
    erb :attack, { locals: { player_1_name: session['player_1_name'], player_2_name: session['player_2_name'] } }
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
