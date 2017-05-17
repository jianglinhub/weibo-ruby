class SessionController < ApplicationController
  def new
  end

  def create
    # downcase 强制转为小写
    @user = find_by(email: params[:session][:email].downcase)
    if @user && @user.thuthenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to @user
    else
      render 'new'
  end

  def destroy
    session.delete(:user_id)
    render 'new'
  end
end
