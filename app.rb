require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'
require 'pry'
class App < Sinatra::Base

    get "/" do
        erb :user_input
    end

    post "/piglatinize" do
    @user_phrase = params[:user_phrase]
    @translated_phrase = PigLatinizer.new.piglatinize(@user_phrase)
    erb :translated
end

end