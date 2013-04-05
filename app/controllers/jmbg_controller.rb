class JmbgController < ApplicationController
  respond_to :html

  def index
  end

  def show
  end

  def new
    @jmbg = Jmbg.new()
    @jmbg.generate()    
  end
end