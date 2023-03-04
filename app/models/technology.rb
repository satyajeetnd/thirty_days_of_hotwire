class Technology < ApplicationRecord
  has_one :favorite_technology
  accepts_nested_attributes_for :favorite_technology, allow_destroy: true

  scope :by_name, ->(name) { where('name LIKE ?', "%#{name}%")}

  def self.search(params)
    technologies = all
    technologies = technologies.by_name(params[:query]) if params[:query].present?
    technologies.where.not(id: FavouriteTechnology.pluck(:technology_id))
  end
end
