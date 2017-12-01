class CreateUbikes < ActiveRecord::Migration[5.1]
  def change
    create_table :ubikes do |t|
      t.integer :raw_id
      t.string :name
      t.timestamps
    end
  end
end
