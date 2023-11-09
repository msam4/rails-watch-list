class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists

  validates :title, presence: true
  validates :overview, presence: true
end
