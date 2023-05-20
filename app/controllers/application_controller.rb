class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  def not_found
    redirect_to root_path
  end
end
