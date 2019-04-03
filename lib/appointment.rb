
class Appointment
  #attr_accessor :doctor, :patient
  attr_reader :patient, :doctor
  @@all = []

  def initialize (date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self

    end
  end

  def doctors
    appointments.map do |appointment|
      appointment.doctor
    end
  end

  def patients
    appointments.map do |appointment|
      appointment.patient
    end
  end

end
