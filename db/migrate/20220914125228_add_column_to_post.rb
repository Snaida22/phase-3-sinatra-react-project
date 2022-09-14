class AddColumnToPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :updated1, :integer
  end
end
