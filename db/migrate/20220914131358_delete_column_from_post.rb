class DeleteColumnFromPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :updated2, :string
  end
end
