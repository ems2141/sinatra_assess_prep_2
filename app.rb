require 'sinatra/base'

class App<Sinatra::Application

  NEW_TASK = ""

  get '/' do
    erb :index
  end

  get '/new' do
    erb :new
  end

  post '/' do
    NEW_TASK = params['new_task']
    erb :index
  end

end