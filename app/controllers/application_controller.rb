class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
  	@current_owner = Owner.find(session[:owner_id])
  end

end
