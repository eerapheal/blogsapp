class UsersController < ApplicationController
  # GET /users/:user_id/posts
  def index
    @users = User.all
  end

  # GET /users/:user_id/posts/:id
  def show
    params[:id]
  end
end
