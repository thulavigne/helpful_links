class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :title
      t.string :link
      t.string :description

      t.timestamps
    end
     def change_table
      add_column(:created_at, :datetime)
      add_column(:updated_at, :datetime)
    end
  end
end
