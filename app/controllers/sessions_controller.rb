class SessionsController < ApplicationController
  def new
  end

  def create
    admin = Admin.find_by(name: params[:session][:name])
    if admin && admin.authenticate(params[:session][:password])
      login(admin)
      redirect_to admin
    else
      flash.now[:alert] = 'Invalid name/password combination'
      render 'new'
    end
  end

  def destroy
  end
end
