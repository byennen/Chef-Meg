class Admin::UsersController < ApplicationController
  before_filter :authenticate_user!
  layout 'admin'

  def index
    @users = User.find(:all)
  end

  def show
    @user = User.find(params[:id])
  end

end
