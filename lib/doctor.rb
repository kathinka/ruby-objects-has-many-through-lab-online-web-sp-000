#require 'pry'

class Doctor
  #attr_accessor :appointment
  attr_reader :name
  @@all =[]

  def initialize (name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
    #binding.pry
  end

  def appointments
    Appointment.all.select do |appointments, patient, doctor|
      appointments.doctor == self
    end
  end

  def patients
    appointments.map do |appointment, patient|
      appointment.patient.name
    end
  end



end
