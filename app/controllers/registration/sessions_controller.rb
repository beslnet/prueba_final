class Registration::SessionsController < Devise::SessionsController
# before_filter :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.for(:sign_in) << :attribute
  # end

    #The path used after sign up.
  def after_sign_in_path_for(resource)
    if resource.user_type === 1
      teacher_dashboard_path
    elsif resource.user_type === 2 
      teacher_index_path
    else
      root_path      
    end
  end
end
