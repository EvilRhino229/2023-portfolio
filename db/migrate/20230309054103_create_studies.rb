class CreateStudies < ActiveRecord::Migration[6.0]
  def change
    create_table :studies do |t|
      t.string :acaname
      t.string :location
      t.string :degree
      t.date :startdate
      t.date :enddate
      t.string :description

      t.timestamps
    end
  end
end
