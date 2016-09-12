class Author < Database # When you use the method rather than exhaustively define every characteristic of every new class , we need only add or redefine the differences between each subclass and its superclass .

	attr_accessor :name,:summary

	def to_s
		name
	end
end



