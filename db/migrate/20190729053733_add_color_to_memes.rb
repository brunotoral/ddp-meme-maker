class AddColorToMemes < ActiveRecord::Migration[5.2]
  def change
    add_column :memes, :color, :string
  end
end
