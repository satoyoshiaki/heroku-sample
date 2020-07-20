class CreateHerokublogs < ActiveRecord::Migration[5.2]
  def change
    create_table :herokublogs do |t|
      t.string :title
      t.text :context

      t.timestamps
    end
  end
end
