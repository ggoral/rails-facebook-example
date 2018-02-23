class SessionsController < ApplicationController
  def create
    auth = request.env["omniauth.auth"]
    user = User.find_by(provider: auth['provider'], uid: auth['uid']) || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    redirect_to root_url, :notice => "Signed in!"
  end

  def new
    redirect_to '/auth/facebook'
  end

  def destroy
    reset_session
    redirect_to root_url, notice: "Signed out!"
  end

  def test
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end

  def user_params
    params.require(:user).permit(:provider, :uid, :name, :oauth_token, :oauth_expires_at, :link, :email, :fb_verified, :gender)
  end
end
