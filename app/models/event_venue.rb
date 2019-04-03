class EventVenue < ApplicationRecord

	# Nombre con mas de 20 letras
	 validates :name,presence: true, length: {minimum: 20}


	 # Capacidad positiva
	 validates :capacity,presence: true, numericality: {greater_than: 0.0}


end
