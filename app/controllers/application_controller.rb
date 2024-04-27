class ApplicationController < ActionController::Base
    # Redirect to dashboard if user is signed in, else to home page
  def after_sign_in_path_for(resource)
    if resource.is_a?(User)
      dashboard_path # Assuming you have a route named dashboard_path
    else
      super
    end
  end

  # Redirect to home page after sign out
  def after_sign_out_path_for(resource_or_scope)
    root_path
  end
end
