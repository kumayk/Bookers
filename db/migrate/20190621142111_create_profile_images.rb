class CreateProfileImages < ActiveRecord::Migration[5.2]
  def change
    create_table :profile_images do |t|
      t.text :image_id
      t.text :caption
      t.string :user_id

      t.timestamps
    end
  end
end
