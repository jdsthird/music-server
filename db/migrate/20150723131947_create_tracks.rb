class CreateTracks < ActiveRecord::Migration
  def change
      create_table :tracks do |t|
        t.references :album, null: false
        t.integer :guest_artist_id
        t.string :name, null: false
        t.integer :length
        t.string :file_location, null: false
        t.string :filetype

        t.timestamps null: false
      end
  end
end
