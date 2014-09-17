class MoviesController < ApplicationController
	def index
		@movies = Movie.all
	end

	def show
		#id = params[:id]
		#@movie = Movie.find(id)
		@movie = Movie.find_by_id(params[:id])
	end
	
	#%h1= @movie.title # this is syntex error.

	def new
		#default
	end

	def create
		@movie = Movie.create!(params[:movie])
		flash[:notice] = "#{@movie.title} was successfully created."
		redirect_to movies_path
	end
end


