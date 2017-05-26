class ChangeIssues < ActiveRecord::Migration
  def change
     change_column :issues, :percentage, :float, :default => 2.00
    end
end
