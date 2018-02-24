class User < ApplicationRecord
  validates :name, :role, :pubkey, presence: true
  validates :name, length: { minimum: 3, message: "Your name is too short!" }
  validates :id, uniqueness: true
  validates_inclusion_of :role, :in => ["Client", "Solicitor"]
end
