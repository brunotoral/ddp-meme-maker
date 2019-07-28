class CreateMemes < ActiveRecord::Migration[5.2]
  def change
    create_table :memes do |t|
      t.string :top_text
      t.string :bottom_text

      t.timestamps
    end
  end
end
