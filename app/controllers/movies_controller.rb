#class MoviesController < ApplicationController
#	def index
#		@movies = Movie.all
#	end
#end

def show
	id = params[:id]
	@movies = Movies.find(id)
end
