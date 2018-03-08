class HomeController < ApplicationController
	def index
		@post = Post.includes(:user).where(status: 0).order(created_at: :desc).page params[:page]
	end
end
