class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.integer "team_id"
      t.string "first_name", :limit => 100
      t.string "last_name", :limit => 100
      t.float "fine"
      t.string "email"
      t.string "password_digest"
      t.boolean "team_lead"
      t.datetime "created_at"
      t.datetime "updated_at"
      # t.timestamps
    end
  end
  def down
  	drop_table :users
  end
end
