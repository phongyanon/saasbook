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

	def edit
		@movie = Movie.find params[:id]
	end

	def update
		@movie = Movie.find params[:id]
		@movie.update_attributes!(params[:movie])
		flash[:notice] = "#{@movie.title} was successfully updated."
		redirect_to movie_path(@movie)	
	end

	def destroy
		@movie = Movie.find(params[:id])
		@movie.destroy
		flash[:notice] = "Movie '#{@movie.title}' deleted."
		redirect_to movies_path
	end
end


