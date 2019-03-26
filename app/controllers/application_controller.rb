
require_relative '../../config/environment'
require 'pry'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    redirect to '/articles'
  end

  get '/articles' do
    #2. shows all articles with id
    @articles = Article.all
    erb :index
  end

  get '/articles/new' do #1. create this route first to extract form data
    @article = Article.new
    erb :new
  end

  post '/articles' do #3. posts all created articles from new.erb
    @article = Article.create(params)
  end

end
