class AddColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :ubikes, :slots, :integer
    add_column :ubikes, :bikes, :integer
    add_column :ubikes, :bemp, :integer
  end
end
