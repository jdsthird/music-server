class Artist < ActiveRecord::Base
  has_many :albums
  has_many :tracks, through: :albums
  has_many :guest_tracks, class_name: :"Track", foreign_key: :guest_artist_id

  validates_presence_of :name
end
