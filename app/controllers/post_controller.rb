class PostController < ApplicationController
  def index
    puts :posts
  end

  def show
    user_id = params[:id].to_i
    @posts = Post.where(user_id == :author_id)
  end
end
