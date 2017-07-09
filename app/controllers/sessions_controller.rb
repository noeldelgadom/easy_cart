class SessionsController < Devise::SessionsController
  def create
    super
    session[:cart_id] = @user.id
  end
end
