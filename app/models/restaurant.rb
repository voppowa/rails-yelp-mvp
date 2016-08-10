class Restaurant < ApplicationRecord
  CATEGORIES = %w(italian french chinese japanese belgian)

  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: {in: CATEGORIES}

  has_many :reviews, dependent: :destroy
end
