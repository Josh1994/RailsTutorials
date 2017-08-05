class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    #debugger #uncomment if you want to debug the code during its current state
              #and find what is causing an error.
  end

  def new
  end
end
