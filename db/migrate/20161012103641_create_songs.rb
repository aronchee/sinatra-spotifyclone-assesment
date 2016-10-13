class CreateSongs < ActiveRecord::Migration

	def change

		create_table :songs do |t|

			t.integer :user_id, index: true, foreign_key: true
			t.integer :playlist_id, index: true, foreign_key: true
			t.string :title
			t.string :artist
			t.string :duration
			t.string :album
			t.timestamp NULL: false

		end

	end

end

