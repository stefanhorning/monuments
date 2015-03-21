class Users::RegistrationsController < Devise::RegistrationsController
  # Allowing logged in users to create new users without devise complaining:
  before_filter :check_permissions, :only => [:new, :create, :cancel]
  skip_before_filter :require_no_authentication

  def check_permissions
    authorize! :create, resource
  end

  def sign_up(resource_name, resource)
    # No sing_in (user are created by admin, which should stay logged in after)
  end
end
