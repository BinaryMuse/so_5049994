class AuthController < ApplicationController
  def callback
    session[:count] ||= 0
    session[:count] += 1

    @count = session[:count]
    @env   = env['omniauth.auth']
  end
end
