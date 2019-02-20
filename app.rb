require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do 
        erb :user_input
    end

    post '/piglatinize' do
        piglatinize1 = PigLatinizer.new
        @new_word = piglatinize1.piglatinize(params['user_input'])
        erb :result
    end
end