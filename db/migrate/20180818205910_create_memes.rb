class CreateMemes < ActiveRecord::Migration[5.2]
  def change
    create_table :memes do |t|
      t.references :user, foreign_key: true
      t.string :img_url
      t.string :bottom_text
      t.string :top_text
      t.string :tags
      t.integer :width
      t.integer :height

      t.timestamps
    end
  end
end
