class CreateAppearances < ActiveRecord::Migration[5.1]
  def change
    create_table :appearances do |t|
      t.belongs_to :episode
      t.belongs_to :guest
      t.integer :episode_rating

      t.timestamps
    end
  end
end
