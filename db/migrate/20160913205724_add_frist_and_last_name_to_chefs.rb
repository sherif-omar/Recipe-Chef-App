class AddFristAndLastNameToChefs < ActiveRecord::Migration
  def change
    add_column :chefs, :frist_name, :string
    add_column :chefs, :last_name, :string
  end
end
