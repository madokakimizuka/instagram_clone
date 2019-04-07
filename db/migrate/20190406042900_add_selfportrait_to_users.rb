class AddSelfportraitToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :self_portrait, :text
  end
end
