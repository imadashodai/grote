class BackofficeController < ApplicationController
  before_action :login_check

  def login_check
    redirect_to root_path, notice: 'Please log in' if !logged_in?
  end
end
