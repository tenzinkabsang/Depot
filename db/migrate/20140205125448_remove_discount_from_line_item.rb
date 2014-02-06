class RemoveDiscountFromLineItem < ActiveRecord::Migration
  def change
    remove_column :line_items, :discount, :decimal
  end
end
