class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    #debugger #uncomment if you want to debug the code during its current state
              #and find what is causing an error.
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params) # Not the final implementation!
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user #handle a successful save
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

end
