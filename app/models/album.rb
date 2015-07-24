class Album < ActiveRecord::Base
  belongs_to :artist
  has_many :tracks

  validates_presence_of :name
  validates_presence_of :artist_id
end
