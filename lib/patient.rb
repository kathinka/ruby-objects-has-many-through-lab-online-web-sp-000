class Patient
  attr_reader :name, :doctor#, :appointment, :doctor
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
    Appointment.all.select do |appointment, doctor|
      appointment.patient == self
      puts appointment.doctor
    end
  end

  def doctors
    appointments.map do |appointment, doctor|
      appointment.doctor.name
    end
  end
end
