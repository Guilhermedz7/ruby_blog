class Post < Database  # When you use the method rather than exhaustively define every characteristic of every new class , we need only add or redefine the differences between each subclass and its superclass .
	attr_accessor :author_id,:title,:review,:article,:date
  @dataset = []  											# Variáveis da Classe: Começam com @@. Existem no escopo da classe, então todas as instâncias de uma classe específica têm um valor para a variável da classe.
	
	def author
		@author ||= Author.find(author_id)
	end

	def to_s
		"#{id} - #{date} - #{title} (#{author})"
	end

end
