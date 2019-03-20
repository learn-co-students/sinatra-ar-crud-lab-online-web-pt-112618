
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    redirect to "/articles"
  end

  get "/articles" do
    @articles = Article.all
    erb :index
  end

  get "/articles/new" do
    @article = Article.create
    erb :new
  end

  post "/articles" do
    @article = Article.create(params)
    redirect to "/articles/#{ @article.id }"
  end
  #
  # get '/articles/:id' do
  #   #show info about a specific article
  # end
  #
  # get '/articles/:id/edit' do
  #   #show a form to edit an article
  # end
  #
  # patch '/articles/:id' do
  #   #edits an article in the database, then redirects
  # end
  #
  # delete '/articles/:id'
  #   #deletes an article in the database, then redirects
  # end

end
