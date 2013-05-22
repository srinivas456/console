class UsersController < ApplicationController

 before_filter :authenticate_user!

def index
    @users = User.all
    
  end

  def show
   @users = current_user
  end

  def new
    @users = User.new
  end

  def create
    @users = User.new(params[:user])
        if @user.save
         #session[:user_id] = @user.id
          redirect_to root_url
          
        else
          render :action => 'new'
          
        end
  end


end
