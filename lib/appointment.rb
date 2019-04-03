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
  end

def patient
  Patient.all.select do |patient|
    patient.appointment == self
  end
end

end
