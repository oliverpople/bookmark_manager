require 'sinatra/base'
require_relative './models/link.rb'

class BookMarkManager < Sinatra::Base

get '/links' do
  @links = Link.all
  erb(:links)
end

ran! if app_file == $0

end
