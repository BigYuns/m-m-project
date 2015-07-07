class CreateDevPeople < ActiveRecord::Migration
  def change
    create_table :dev_people do |t|
      t.string :name
      t.references :magnetic, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
