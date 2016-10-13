class CreatePlaylists < ActiveRecord::Migration
	def change

		create_table :playlists do |t|

			t.integer :user_id, index: true, foreign_key: true
			t.string :p_name
			t.timestamp NULL: false

		end

	end
end
