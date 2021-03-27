class Player < ApplicationRecord
  has_many :memberships
  has_many :clubs, through: :memberships
end
