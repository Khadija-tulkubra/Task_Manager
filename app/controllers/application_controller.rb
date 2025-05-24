class ApplicationController < ActionController::Base
  # Redirect after login
  def after_sign_in_path_for(resource)
    if resource.is_a?(User)
      tasks_path
    elsif resource.is_a?(Admin)
      admin_dashboard_path
    else
      root_path
    end
  end

  # Redirect after logout
  def after_sign_out_path_for(resource_or_scope)
    new_admin_session_path  # Or root_path if you prefer
  end
end
