class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :name
      t.belongs_to :provider, foreign_key: true

      t.timestamps
    end
  end
end
