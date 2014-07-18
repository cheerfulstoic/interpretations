class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.string :name
      t.string :link
      t.references :artist, index: true

      t.timestamps
    end
  end
end
