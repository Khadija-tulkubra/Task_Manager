class UserController < ApplicationController
  before_action :authenticate_user!

  def dashboard
    # User-specific content
  end
end
