require 'luhnacy'
require 'verhoeff'

class Jmbg < ActiveRecord::Base
  def generate
    begin
      self.jmbg_number = Verhoeff.checksum_of(Luhnacy.generate(12)).to_s
    end while self.jmbg_number.size != 13
  end
end