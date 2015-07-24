class AddTrackNumberToTracks < ActiveRecord::Migration
  def change
    add_column :tracks, :track_number, :integer, null: false, default: 1
  end
end
