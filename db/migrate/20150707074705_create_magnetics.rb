class CreateMagnetics < ActiveRecord::Migration
  def change
    create_table :magnetics do |t|

      t.timestamps null: false
    end
  end
end
