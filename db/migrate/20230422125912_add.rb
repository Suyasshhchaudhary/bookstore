class Add < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :age, :integer, null: false, default: 0
    add_column :users, :gender, :string, null: false
    add_column :users, :phone, :integer
  end
end
