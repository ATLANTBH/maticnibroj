class JmbgController < ApplicationController
  MAX = 999999999999

  def index
  end

  def new
    @jmbg = get_jmbg()
    
    flash[:msg] = { :type => 'info', :text => "JMBG kreiran: #{@jmbg}"}

    redirect_to root_path()
  end

  private
  def get_jmbg
    rand(MAX).to_s.center(13, rand(9).to_s)
  end
end