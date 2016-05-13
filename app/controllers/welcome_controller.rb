class WelcomeController < ApplicationController

  def index
    flash[:notice] = "Hello"
    flash[:danger] = "World"
  end

end
