class SessionsController < Devise::SessionsController
  def create
    super
    puts ' --- yay --- '
  end
end
