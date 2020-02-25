class CreateBoards < ActiveRecord::Migration[6.0]
  def change
    create_table :boards do |t|
      t.string :title
      t.text :description
      t.string :picture
      t.integer :user_id

      t.timestamps
    end
  end
end
