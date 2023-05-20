class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  def not_found
    redirect_to root_path, notice: 'No page found at that address'
  end
end
