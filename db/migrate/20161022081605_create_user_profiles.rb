class CreateUserProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :user_profiles do |t|
      t.references :user, index: true
      t.string :name, null: false
      t.text :bio
      t.string :avatar
      t.string :location

      t.timestamps null: false
    end
  end
end
