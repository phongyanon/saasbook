class MoviesController < ApplicationController
	def index
		@movies = Movie.all
	end

	def show
		#id = params[:id]
		#@movie = Movie.find(id)
		@movie = Movie.find_by_id(params[:id])
	end
	
	#%h1= @movie.title
end


