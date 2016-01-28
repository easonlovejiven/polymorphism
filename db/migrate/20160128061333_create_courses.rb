class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :courseable_id
      t.string :courseable_type

      t.timestamps null: false
    end
  end
end
