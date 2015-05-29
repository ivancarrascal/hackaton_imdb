class WordsController < ApplicationController

	def index
 
		numRandom = rand(Word.count)+1
		@selectedWord = Word.find numRandom

		questRandom = rand(Question.count)+1
        @wordQuestion = Question.find questRandom

		@findMovies = Word.show_five_movies(@selectedWord.name)

		@filmCorrect = @findMovies[rand(5)+1]

		@count = 0
	end

	def reload_movies
		numRandom = rand(Word.count)+1
		@selectedWord = Word.find numRandom

		questRandom = rand(Question.count)+1
        @wordQuestion = Question.find questRandom

		@findMovies = Word.show_five_movies(@selectedWord.name)

		@filmCorrect = @findMovies[rand(5)+1]

		respond_to do |format|
			format.html {render :layout => nil}
		end

	end

end
