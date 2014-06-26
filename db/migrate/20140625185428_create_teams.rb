class CreateTeams < ActiveRecord::Migration
  	def up
    	create_table :teams do |t|
    	t.string "team_name", :limit => 50
    	t.float "fine"
      t.string "currency", :limit => 25
    	t.datetime "created_at"
    	t.datetime "updated_at"
      	# t.timestamps
    	end
    end
   	
   	def down
   		drop_table :teams
   	end
  
end
