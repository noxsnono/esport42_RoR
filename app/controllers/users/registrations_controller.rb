class Users::RegistrationsController < Devise::RegistrationsController
before_action :configure_sign_up_params, only: [:create]
before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  def new
    super
  end

  # POST /resource
  def create
    super
  end

  # GET /resource/edit
  def edit
    super
  end

  # PUT /resource
  def update
    super
  end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

protected
  def configure_sign_up_params
    # devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(
      :email, :password, :username, :first_name, :last_name, :birthday,
      :adress_line1, :adress_line2, :adress_line3, :adress_city,
      :adress_province, :adress_postalcode, :adress_country,
      :adress_otherDetails, :adress_postalcode, :adress_country,
      :adress_otherDetails
    ) }
  end

  def configure_account_update_params
    # devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(
      :email, :password, :current_password, :username, :first_name, :last_name,
      :birthday, :adress_line1, :adress_line2, :adress_line3, :adress_city,
      :adress_province, :adress_postalcode, :adress_country, :adress_otherDetails,
      :adress_postalcode, :adress_country, :adress_otherDetails,
      :skype_id, :email_secondary, :phone_mobile, :phone_home, :steam_id,
      :battlenet_id, :origin_id, :maniaplanet_id, :xbox_live, :sony_psn,
      :website_url, :facebook_private_url, :facebook_gamer_url, :youtube_url,
      :twitch_url, :googleplus_url, :sponsor, :quote, :pc_cpu, :pc_ram,
      :pc_graphic_card, :pc_motherboard, :pc_keyboard, :pc_mouse, :pc_mousepad,
      :pc_screen, :pc_internet, :pc_harddisk, :pc_soundcard, :pc_cpu_fan,
      :pc_computer_case, :pc_alim, :pc_os_sytem, :pc_smarphone
    ) }
  end

  def update_resource(resource, params)
    resource.update_without_password(params)
  end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
