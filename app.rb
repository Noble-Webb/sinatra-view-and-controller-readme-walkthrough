require_relative 'config/environment'

class App < Sinatra::Base
  #renders the reverse page
  get '/reverse' do
    erb :reverse
  end

  #recieves params hash from the form & renders reversed page
  post '/reverse' do
    original_string = params["string"]
    @reversed_string = original_string.reverse
    erb :reversed
  end

  #renders the friends page ##iteration practice
  get '/friends' do
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']

    erb :friends
  end
end