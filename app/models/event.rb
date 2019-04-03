class Event < ApplicationRecord
  belongs_to :event_venue
  has_many :ticket_types


# Que la fecha de creacion del evento sea antes del comienzo

  validate  :start_date_cannot_be_later_than_current_date



  def start_date_cannot_be_later_than_current_date


  	if self.start_date < DateTime.now



  		errors.add(:start_date, "ERROR FECHA")

  	end

  end




end
