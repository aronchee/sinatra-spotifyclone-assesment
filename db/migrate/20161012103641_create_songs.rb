class CreateSongs < ActiveRecord::Migration

	def change

		create_table :songs do |t|

			t.string :title
			t.string :artist
			t.string :duration
			t.string :album
			t.timestamp NULL: false

		end

	end

end

