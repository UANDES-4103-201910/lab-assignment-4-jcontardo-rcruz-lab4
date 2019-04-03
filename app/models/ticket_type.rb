class TicketType < ApplicationRecord
  belongs_to :event
  belongs_to :ticket_zone


  # Capacidad positiva
  validates :price,presence: true, numericality: {greater_than: 0.0}





end
