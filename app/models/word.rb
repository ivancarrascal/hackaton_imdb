class Word < ActiveRecord::Base
	
    def self.show_five_movies movie
    	five_movies = []
        movies_find = Imdb::Search.new(movie)
  	    total_film = 0
        while total_film < 5 do
            if movies_find.movies[total_film].poster
        	   five_movies << movies_find.movies[total_film]
               total_film += 1
            end
        end

        return five_movies
    end

end
