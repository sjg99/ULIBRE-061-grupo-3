class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.float :rating
      t.references :user, foreign_key: true
      t.references :driver, foreign_key: true

      t.timestamps
    end
  end
end
