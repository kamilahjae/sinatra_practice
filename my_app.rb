require 'sinatra'

class MyApp < Sinatra::Base

  get "/" do
    erb :index
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
