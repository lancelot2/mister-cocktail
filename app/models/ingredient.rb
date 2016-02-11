class Ingredient < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  has_many :doses, dependent: :destroy
end
