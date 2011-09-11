class ApplicationController < ActionController::Base
  protect_from_forgery
  layout :layout_by_resource

  def home

  end

  private

  def layout_by_resource
    if devise_controller?
      "plain"
    else
      "application"
    end
  end
end
