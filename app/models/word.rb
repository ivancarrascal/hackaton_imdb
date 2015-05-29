class Word < ActiveRecord::Base
	
    def self.show_five_movies movie
    	five_movies = []
        movies_find = Imdb::Search.new(movie)
  	
        for i in 0..4
        	five_movies << movies_find.movies[i]
        end

        return five_movies
    end

end
