class Track < ActiveRecord::Base
  belongs_to :album
  has_one :artist, through: :album
  belongs_to :guest_artist, class_name: :"Artist"
  has_many :listings
  has_many :playlists

  validates_presence_of :album_id
  validates_presence_of :name
  validates_presence_of :file_location
end
