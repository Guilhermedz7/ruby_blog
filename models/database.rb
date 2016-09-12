class Database
	attr_accessor :id
 
  class << self
	  attr_accessor :dataset
  end

	def initialize(args)        			  # setting the standard method called initialize passing a variable called (args )
		args.each do |arg,value| 					# This variable between .each ( || ) shall be two arguments from example k , v . Where K = arg and V = value
			send("#{arg}=", value)					# The send go there in my main.rb and pulls arg that can be ( title) and value matches the description that is in the variable ( title) . 
		end
	end
	
	def self.all    									  # When defining the method self.all he takes what's inside the array @@ dataset in which case it would post 
		dataset.dup												# And keeps it all already discretions the .dup is for anyone out came these variables and alteralas
	end

	def self.create(args)               # This method self.create creates the variable args , which would be a new varialvel
		args.merge!(id: SecureRandom.hex) # cria um string com varios caracteres aleatorios
	  dataset << new(args)              # Now the @@ dataset is receiving this variable args that begins to be counted as new, ie still has nothing in it ,

		persist!
	end

	def self.find(id)
		dataset.find {|d| d.id == id }		 # se o meu id for iguam ao parametro ok, se nao passa para o outro
	end

	def self.load
		@dataset = YAML.load(File.open(dataset_filename, "r"))
	end

	private

	def self.persist!
		File.open(dataset_filename, "w") {|f| f.write dataset.to_yaml}
	end

	def self.dataset_filename
		"./db/#{self.name.downcase}.yml"
	end
end