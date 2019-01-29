require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "secret"
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :layout
  end

  helpers do
    def self.current_user(session)
      User.find_by_id(session["user_id"])
    end
  
     def self.logged_in(session)
      !!session["user_id"]
    end
  end

end