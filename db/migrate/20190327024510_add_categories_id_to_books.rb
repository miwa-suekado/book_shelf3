class AddCategoriesIdToBooks < ActiveRecord::Migration[5.2]
  def change
    add_reference :books, :category, foreign_key: true, index: true, after: :description
  end
end
