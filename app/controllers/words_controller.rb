class WordsController < ApplicationController

	def index
 
		numRandom = rand(Word.count)+1
		@selectedWord = Word.find numRandom

	end

end
