class Gonoon < ActiveRecord::Migration
  def change
     change_column :issues, :percentage, :float, :null => 1.00, :default => 2.00
    end
end
