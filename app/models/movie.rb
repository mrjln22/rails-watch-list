class Movie < ApplicationRecord
  has_many :bookmarks

  validates :title, :overview, presence: true
  validates :title, uniqueness: true
end

##  should not be able to destroy self if has bookmarks children (FAILED - 12)
