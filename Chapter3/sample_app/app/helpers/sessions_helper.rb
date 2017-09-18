module SessionsHelper

  #Logs in the given user
  def log_in(user)
    session[:user_id] = user.id
  end

  #Returns the current logged-in user 
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
    #@current_user = @current_user || "bar". Current_user will be the first non nil or false
    # value. In this case it will be bar unless @current_user has a value.
  end

  #Returns true if user is logged in
  def logged_in?
    !current_user.nil?
  end

  #Log out user
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
end
