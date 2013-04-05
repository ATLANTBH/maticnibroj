require 'luhnacy'
require 'verhoeff'

class Jmbg < ActiveRecord::Base
  def generate
    self.jmbg_number = Verhoeff.checksum_of(Luhnacy.generate(12))
  end
end