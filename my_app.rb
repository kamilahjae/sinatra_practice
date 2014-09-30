require 'sinatra'
require './lib/post' # allows us to use the post methods
require '/blog'
require '/portfolio'
require '/contact'

class MyApp < Sinatra::Base

  # # will make this available for all route handlers. If you want to put this in layout instead of index
  # before do
  #   @posts = Post.all
  # end

  get "/" do
    @posts = Post.all # put here instead of view file because we want as little ruby code there as possible. an array of post objects
    erb :index # render erb
  end

  post "/" do
    puts params.inspect #add input into database
    redirect to("/") # #2 in chart: this will end us back tot he get "/" request
  end

  get "/about-me" do
    erb :about_me
  end

  get "/blog" do
    erb :blog
  end

  get "/portfolio" do
    erb :portfolio
  end

  get "/contact" do
    erb :contact
  end

  # dynamic route
  get "/posts/:post_name" do
    post = params[:post_name]
    erb "/posts/#{post}".to_sym
  end
end

# get modifies the url so that everything after the question mark is the body
