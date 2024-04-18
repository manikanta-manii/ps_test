class HomeController < ApplicationController
  def index 
    @doctors = Doctor.where(available:true)
  end

end