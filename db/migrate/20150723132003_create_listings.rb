class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.references :playlist, null: false
      t.references :track, null: false

      t.timestamps null: false
    end
  end
end
