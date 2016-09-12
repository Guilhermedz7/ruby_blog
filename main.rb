require "sinatra"
require "yaml"
require "securerandom"       # sem ./ porque não é de uma class existente no meu rub_blog
require "./models/database"
require "./models/author"           # This method loads a library in your code, the name of the specified file is added to a list , with the " ./name file " Ruby will not attempt to locate the resource in other directories , if not find the location you specified.
require "./models/post"

Author.load
Post.load

get "/" do
  @posts = Post.all
  erb :index
end

get "/new" do
  @post = Post.new
  erb :new
end

get "/:id" do 
  @post = Post.find(params[:id])
  erb :post
end

post "/" do
  @post = Post.create(params[:post])
  redirect to("/#{@post.id}")
end