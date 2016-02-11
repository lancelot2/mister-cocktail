class Dose < ActiveRecord::Base
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true
  validates :cocktail_id, presence: true
  validates :ingredient_id, presence: true
  validates_uniqueness_of :ingredient_id, scope: :cocktail_id

  # validates :couple_uniqueness

  # def couple_uniqueness
  #   if doses.cocktail_id.present? && doses.ingredient_id.present?
  #     errors.add(:description, "This ingredient is already in this cocktail")
  # end

end
