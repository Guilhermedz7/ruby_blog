class Post < Database  # When you use the method rather than exhaustively define every characteristic of every new class , we need only add or redefine the differences between each subclass and its superclass .

	attr_accessor :author,:title,:review,:article,:date
	
	def to_s
		"#{date} - #{title} (#{author})"
	end
end
