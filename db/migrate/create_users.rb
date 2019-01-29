class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do
      t.string :username
      t.string :username
    end
  end
end