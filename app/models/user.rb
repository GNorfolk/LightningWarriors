class User < ApplicationRecord
  validates :name, :role, :pubkey, presence: true

  validates :name, length: { minimum: 3, message: "Your name is too short!" }

  validates :role,

  validates :pubkey, length: {  }
end
