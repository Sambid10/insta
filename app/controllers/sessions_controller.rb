class SessionsController < ApplicationController
  before_action :user_already_loggedin ,only: [:new]
  def new
  end

  def create
    user=User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
    session[:user_id]=user.id
    redirect_to root_url,notice:"Logged in!"
    else
      flash.now[:alert]="Email or password is invalid"
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    session[:user_id]=nil
    redirect_to root_url,notice:"Logged out!"
  end

  private
  def user_already_loggedin
    if current_user 
      redirect_to root_path
    end
  end
end
