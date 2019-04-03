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
      appointment.all.select do |appointment|
        patient.appointment == self
      end
    end

end
