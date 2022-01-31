class WelcomeController < ApplicationController
  def index
    session[:curso] = "Ruby on Rails"
    session[:nome] = "Marlyson Clingio"
  end
end