class UserController < ApplicationController
  
  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def create
    @user = User.create( params[:user] )
  end


  def new
  end

end
