class Club < ApplicationRecord
  has_many :memberships
  has_many :players, through: :memberships

  validates :name, presence: true
end
