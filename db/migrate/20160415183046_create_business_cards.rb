class CreateBusinessCards < ActiveRecord::Migration
  def change
    create_table :business_cards do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
