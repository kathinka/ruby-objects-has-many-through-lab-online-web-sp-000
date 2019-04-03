class Patient
  attr_accessor :appointment
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
      #puts appointment.doctor
    end
  end

  def doctors
    appointments.map do |appointment|
      appointment.doctor
    end
  end
end
