class CreateProviders < ActiveRecord::Migration[5.2]
  def change
    create_table :providers do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.boolean :verified

      t.timestamps
    end
  end
end
