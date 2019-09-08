class Pet < ApplicationRecord
  validates :name, presence: true, length: { maximum: 45, minimum: 3 }
  validates :comment, presence: true, length: { maximum: 100, minimum: 10 }

end
