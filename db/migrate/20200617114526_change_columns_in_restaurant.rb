class ChangeColumnsInRestaurant < ActiveRecord::Migration[6.0]
  def change
    rename_column :restaurants, :phone, :phone_number
    remove_column :restaurants, :number
  end
end
