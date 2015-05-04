class MoviesController < ApplicationController
	def index
		search = params[:q]

		# Safe
		@movies = Movie.where("title LIKE ?", "%#{search}%")

		render json: @movies
	end
end
