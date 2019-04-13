class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  before_action :logged_in_user
  def logged_in_user
    unless logged_in?
      flash[:danger] = "ログインしてください"
      redirect_to new_session_path
    end
  end
end
