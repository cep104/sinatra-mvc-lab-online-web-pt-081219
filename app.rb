require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end
    
    post '/piglatinize' do

        @user_phrase = PigLatinizer.new.piglatinize(params[:user_phrase])

     
        @user_phrase = PigLatinizer.new..split.collect do|word| 
        piglatinize(params[:user_phrase]) 
      end

        erb :result
    end
end