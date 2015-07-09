class AddNameToMagnetics < ActiveRecord::Migration
  def change
    add_column :magnetics, :name, :string
  end
end
