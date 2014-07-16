class CreateUsersDbs < ActiveRecord::Migration
  def change
    create_table :users_dbs do |t|
      t.text :username
      t.text :email

      t.timestamps
    end
  end
end
