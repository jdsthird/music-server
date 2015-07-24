class Listing < ActiveRecord::Base
  belongs_to :playlist
  belongs_to :track

  validates_presence_of :playlist_id
  validates_presence_of :track_id
end
