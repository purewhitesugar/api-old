class CreateLogos < ActiveRecord::Migration
  def change
    create_table :logos do |t|
      t.string :uri
      t.string :description

      t.timestamps
    end
  end
end
