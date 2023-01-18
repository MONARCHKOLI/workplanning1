class CreateShifts < ActiveRecord::Migration[7.0]
  def change
    create_table :shifts do |t|
      t.string :shift
      t.date :date
      t.string :status
      t.references :workers, null: false, foreign_key: true

      t.timestamps
    end
  end
end
