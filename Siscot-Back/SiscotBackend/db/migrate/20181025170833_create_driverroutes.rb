class CreateDriverroutes < ActiveRecord::Migration[5.2]
  def change
    create_table :driverroutes do |t|
      t.references :driver, foreign_key: true
      t.references :route, foreign_key: true

      t.timestamps
    end
  end
end
