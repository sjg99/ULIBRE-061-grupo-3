class CreateUsrfavs < ActiveRecord::Migration[5.2]
  def change
    create_table :usrfavs do |t|
      t.references :user, foreign_key: true
      t.references :route, foreign_key: true

      t.timestamps
    end
  end
end
