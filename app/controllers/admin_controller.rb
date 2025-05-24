class AdminController < ApplicationController
  before_action :authenticate_admin!
  def dashboard
     @admin = current_admin
     @users = User.includes(:tasks)
  end
end
