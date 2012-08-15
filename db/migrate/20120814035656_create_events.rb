class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.integer :course_id
      t.date :start_date
      t.date :end_date
      t.string :media
      t.string :credit
      t.string :caption

      t.timestamps
    end
  end
end
