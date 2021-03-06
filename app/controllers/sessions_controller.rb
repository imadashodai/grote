class SessionsController < ApplicationController
  def new
  end

  def create
    admin = Admin.find_by(name: params[:session][:name])
    if admin && admin.authenticate(params[:session][:password])
      login(admin)
      redirect_to backoffice_admin_path(admin)
    else
      flash.now[:alert] = 'Invalid name/password combination'
      render 'new'
    end
  end

  def destroy
    logout
    redirect_to root_url
  end
end
