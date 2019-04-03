class User < ApplicationRecord
  has_many :orders

  # Numero de telefono entre 9 y 12 digitos

  validates :phone_number,presence: true, length: {in: 9..12}

  # Password entre 8 y 12 digitos alfanumericos

  validates :password,presence: true, length: {in: 8..12}

  
  # Email formato correcto
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}



end


 


