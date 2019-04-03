require 'pry'
class Appointment
  attr_accessor :doctor, :patient

  @@all = []

  def initialize (date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
    binding.pry
  end

def tullball
  "Dette er tull"
  binding.pry
end

end
