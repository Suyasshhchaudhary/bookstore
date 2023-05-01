class CreateBooksCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :books_categories, id: false do |t|
      t.references :book
      t.references :category
    end
  end
end
