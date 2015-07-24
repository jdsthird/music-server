class Playlist < ActiveRecord::Base
  has_many :listings
  has_many :tracks, through: :listings

  validates_presence_of :name
end
