module ApplicationHelper
  def current_user
    @current_uder ||= User.find_by(id: session[:user_id])
  end
  
  def logged_in?
    !current_user.nil?
  end
end
