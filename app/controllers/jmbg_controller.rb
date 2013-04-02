require "uuidtools"

class JmbgController < ApplicationController
  MAX = 999999999999


  def index
  end

  def new
    @jmbg = rand(MAX).to_s.center(13, rand(9).to_s)
    flash[:msg] = { :type => 'info', :text => "JMBG kreiran: #{@jmbg}"}

   redirect_to root_path()
  end
end