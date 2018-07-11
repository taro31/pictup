class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      
      t.string      :public_id
      t.string      :format
      t.text        :original_filename
      t.text        :url
      t.text        :secure_url
      t.timestamps
      
    end
  end
end
