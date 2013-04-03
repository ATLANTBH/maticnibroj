require 'luhnacy'
require 'verhoeff'

class JmbgController < ApplicationController

  def index
  end

  def new
    @jmbg = get_jmbg()
    
    flash[:msg] = { :type => 'info', :text => "JMBG kreiran: #{@jmbg}"}

    redirect_to root_path()
  end

  private
  def get_jmbg
    Verhoeff.checksum_of(Luhnacy.generate(12))
  end
end