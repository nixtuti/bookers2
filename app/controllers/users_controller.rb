class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
    @books = @user.books
  end
  
  def edit
    @user = User.find(current_user.id)
  end
  
  def update
    
  end
  
end
