class Patient

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
    # Takes arguments and creates a new appointment.
    # Should know it belongs to this patient
    Appointment.new(self, date, doctor)
  end

  def appointments
    # iterates over appointments and returns only those belonging to said patient
    Appointment.all.select{|info| info.patient == self}
  end

  def doctors
    # iterates over patients appointments and collect the dotor that belongs to each appointment.
    self.appointments.map{|info| info.date}
  end
end
# binding.pry
# "Mischief Managed!"
