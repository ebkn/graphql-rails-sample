class ApplicationController < ActionController::Base
  include Clearance::Controller

  skip_before_action :verify_authenticity_token

  protected

  def authenticate_by_api_token!
    sign_in User.first
  end
end
