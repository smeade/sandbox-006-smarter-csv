class CreateImports < ActiveRecord::Migration
  def change
    create_table :imports do |t|
      t.string :notes
      t.boolean :live

      t.timestamps
    end
  end
end
