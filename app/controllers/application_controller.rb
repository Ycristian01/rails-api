class ApplicationController < ActionController::API
  class AuthorizationError < StandardError; end

  rescue_from UserAuthenticator::AuthenticationError, with: :authentication_error

  rescue_from AuthorizationError, with: :authorization_error

  private

  def authorization_error
    error = {
    "status" => "403",
    "source" => { "pointer" => "/headers/authorization" },
    "title" =>  "Not authorized",
    "detail" => "You have no right to access this resource."
    }
    render json: { "errors": [ error ] }, status: 403
  end
  
  def authorization_error
    error = {
      "status" => "403",
      "source" => { "pointer" => "/headers/authorization" },
      "title" =>  "Not authorized",
      "detail" => "You have no right to access this resource."
    }
    render json: { "errors": [ error ] }, status: 403
  end
end
