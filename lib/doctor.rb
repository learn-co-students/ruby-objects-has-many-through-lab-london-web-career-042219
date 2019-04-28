require 'pry'
class Doctor

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    # creates a new appointment using the arguments.
    # The appointment should know it belongs to this doctor.
    Appointment.new(date, patient, self)
  end

  def appointments
    # iterates over all appointments and finds those belongs to this doctor
    Appointment.all.select{|info| info.doctor == self}
  end

  def patients
    # iterates over this doctors appointmnets and collects patients that belong to each appointment
     self.appointments.map{|info| info.patient}
  end
end
# binding.pry
# puts "Mischief Managed!"
