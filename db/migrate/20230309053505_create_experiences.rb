class CreateExperiences < ActiveRecord::Migration[6.0]
  def change
    create_table :experiences do |t|
      t.string :expname
      t.string :title
      t.string :description
      t.integer :years

      t.timestamps
    end
  end
end
