class SessionsController < ApplicationController
  before_action :logged_in_redirect, only: [ :new, :create ]

  def new
  end


def create
  user = User.find_by(username: params[:username])

  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect_to root_path, notice: "Logged in successfully"
  else
    flash.now[:alert] = "Invalid username or password"
    render :new, status: :unprocessable_entity
  end
end




  def destroy
    session[:user_id] = nil
    redirect_to login_path, notice: "Logged out"
  end

  private

  def logged_in_redirect
    if logged_in?
      flash[:error] = "you are aldeardy logged in"
      redirect_to root_path
    end
  end
end
