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


  def correct_user
    if @current_user.id != @picture.user.id
      flash[:daneger] = "他の人の投稿を編集することはできません"
      redirect_to new_session_path
    end
  end

  def correct_user?
    @user = User.find(params[:id])
    redirect_to new_session_path unless @user == current_user
  end
end
