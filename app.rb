require_relative 'config/environment'

class App < Sinatra::Base
  
configure do
  enable :sessions
  set :session_secret, "secret"
end

get '/' do 
  erb :index
end

  post '/' do                                           
    text_from_user = params[:item]
 
    @analyzed_text = TextAnalyzer.new(text_from_user)

    erb :results
  end

end