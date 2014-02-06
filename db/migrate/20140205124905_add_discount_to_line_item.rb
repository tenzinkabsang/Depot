class AddDiscountToLineItem < ActiveRecord::Migration
  def change
    add_column :line_items, :discount, :decimal
  end
end
