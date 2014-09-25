require 'sinatra'
require './lib/post' # allows us to use the post methods

class MyApp < Sinatra::Base

  # # will make this available for all route handlers. If you want to put this in layout instead of index
  # before do
  #   @posts = Post.all
  # end

  get "/" do
    @posts = Post.all # put here instead of view file because we want as little ruby code there as possible. an array of post objects
    erb :index # render erb
  end

  get "/about-me" do
    erb :about_me
  end

  # dynamic route
  get "/posts/:post_name" do
    post = params[:post_name]
    erb "/posts/#{post}".to_sym
  end
end
