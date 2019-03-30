class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title, null: false, length: 50
      t.integer :price, null: false
      t.date :publish_date, null: false
      t.text :description, null: false, length: 1000

      t.timestamps
    end
  end
end
