class ChangeColumnInReview < ActiveRecord::Migration[6.0]
  def change
    rename_column :reviews, :rating, :new_column
  end
end
