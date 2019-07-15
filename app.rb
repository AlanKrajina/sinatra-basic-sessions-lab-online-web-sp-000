require_relative 'config/environment'

class App < Sinatra::Base
  
configure do
  enable :sessions
  set :session_secret, "secret"
end

get '/' do 
  erb :index
end

  post '/' do                                           <<<<<-------- s ovim ne otvara novu stranicu nego refres rezultat na staru?
    text_from_user = params[:user_text]
 
    @analyzed_text = TextAnalyzer.new(text_from_user)
#   @analyzed_text = TextAnalyzer.new(params[:user_text])

    erb :results
  end

end