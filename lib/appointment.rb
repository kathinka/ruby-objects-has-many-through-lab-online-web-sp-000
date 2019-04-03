#require 'pry'
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
    #binding.pry
  end

  def patient
      Appointment.all.select do |appointment|
        appointment.patient == self
      end
    end

end
