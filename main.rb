require "yaml"
require "securerandom"       # sem ./ porque não é de uma class existente no meu rub_blog
require "./models/database"
require "./models/author"           # This method loads a library in your code, the name of the specified file is added to a list , with the " ./name file " Ruby will not attempt to locate the resource in other directories , if not find the location you specified.
require "./models/post"

Author.load
Post.load

Post.all.each do |post|       # To iterate on a Array we have the each method , which calls the code block associated to each of your items , passing the item as a parameter to the block:
  puts "#{post}"
end
