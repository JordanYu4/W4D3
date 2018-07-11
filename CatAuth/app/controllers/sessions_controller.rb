class SessionsController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.find_by_credentials(params[:user][:user_name], params[:user][:password])
    debugger
    if @user
      # login(@user)
      redirect_to cats_url
    else
      flash.now[:errors] = ['Invalid username and password']
      render :new
    end
  end
  
end
