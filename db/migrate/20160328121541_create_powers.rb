class CreatePowers < ActiveRecord::Migration
  def change
    create_table :powers do |t|
      t.string :title
      t.string :code_on
      t.string :code_off
      t.boolean :state, default: false

      t.timestamps null: false
    end
  end
end
