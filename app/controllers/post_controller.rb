class PostController < ApplicationController
	before_action :find_post, only: [:show, :edit, :update, :destroy]
	def index
	end

	def show
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
	end

	def edit 
		if@job.save
			redirect_to @post
		else
			render "New"
		end
	end

	def update
	end

	def destroy
	end

	private 

	def post_params
		params.require(:job).permit(:title, :description, :url)
	end

	def find_post
		@post = Job.find(params[:id])
	end


end
