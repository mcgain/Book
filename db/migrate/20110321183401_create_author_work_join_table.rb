class CreateAuthorWorkJoinTable < ActiveRecord::Migration
	def self.up
		create_table :authors_works, :id => false do |t|
			t.integer :author_id
			t.integer :work_id
		end
	end
	def self.down
		drop_table :authors_works
	end
end