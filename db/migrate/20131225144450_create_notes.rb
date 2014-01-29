class CreateNotes < ActiveRecord::Migration
  def up
    create_table :notes do |t|
      t.integer :user_id
      t.text :content
      t.string :title

      t.timestamps
    end
    # add_foreign_key(:notes,:users)
  end

  def down
  	drop_table :notes
  	# remove_foreign_key(:notes,:users)
  end
end
