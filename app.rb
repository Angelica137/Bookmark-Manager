require 'sinatra/base'

class BookmarkManager < Sinatra::base
  get '/'do
    'Hello World'
  end

  run! if app_file == $0
end