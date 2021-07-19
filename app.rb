require "sinatra/base"
require "sinatra/reloader"
require "./lib/bookmark_logic"

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  get "/bookmarks" do
    @bookmarks = Logic.all
    erb(:show_bookmarks)
  end

  run! if app_file == $0
end

