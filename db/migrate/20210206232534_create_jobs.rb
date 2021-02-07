class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :location
      t.string :time
      t.string :date
      t.integer :payment
      t.text :description

      t.timestamps
    end
  end
end
