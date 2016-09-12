require "./database"
require "./author"  # This method loads a library in your code, the name of the specified file is added to a list , with the " ./name file " Ruby will not attempt to locate the resource in other directories , if not find the location you specified.
require "./post"


Author.create(    # In this method is going to create @@ authores the first position is 0 assigning the first name and summary     
  name: 'Marcio',
  summary: 'Nesta edição trataremos os modelos de 2016'
)

Author.create( # The variables that start with @@ . the scope, then all instances of a particular class have a value for the variable in the class .
  name: 'Roberto',
  summary: 'Esta edição trataremos de carros super novos tunados' 
)

Post.create(    # Post.create this method is going to authores @@ [ 0] add the first position the atribultos that the variables that have create .
  author: Author.all[0],
  date: Time.now,
  title: 'Branca de neve',
  review: 'Este livro tratasse da história de branca de neve e os 7 anoes',
  article: 'Já na floresta, Branca de Neve conheceu alguns animais, os quais se tornaram seus amigos. Também encontrou uma pequenina casa e bateu a sua porta. Como ninguém respondeu e a porta não estava fechada à chave, entrou. Era uma casa muito pequena, que tinha sete caminhas, todas muito pequeninas, assim como as cadeiras, a mesa e tudo o mais que se encontrava na casa. Também estava muito suja e desarrumada, e Branca de Neve decidiu arrumá-la. No fim, como estava muito cansada, deitou-se nas pequenas camas, que colocou todas juntas, e adormeceu.'
)

Post.create(
  author: Author.all[1],
  date: Time.now,
  title: 'João e Maria',
  review: 'Este livro conta a historia de duas crianção que se perdem na floresta',
  article: 'Esperou que os pais estivessem dormindo, saiu da cabana, catou um punhado de pedrinhas brancas que brilhavam ao clarão da lua e as escondeu no bolso. Depois voltou para a cama.'
)

Post.create(
  author: Author.all[0],
  date: Time.now,
  title: 'João e o pé de feijão',
  review: 'Este livro conta a historia de um campones que tem feijões magicos',
  article: 'Um menino com feijões magicos planta em seu quintal quando ve nasce uma arvore que ultraoassa as nuvens, ele muito curioso sobe na arvore e descobre um castelo gigante, ao chegar no caltelo da de frente para um gigante que possui uma galinha que bota ovos de ouro, ele rapidamente pega a galinha e a leva para sua casa, ao dar falta da galinha o gigante vai atraz dele e ele corta o pé de feijão, e o gigante cai e morre.'
)

Post.all.each do |post|  # To iterate on a Array we have the each method , which calls the code block associated to each of your items , passing the item as a parameter to the block:
  puts "#{post}"
end

