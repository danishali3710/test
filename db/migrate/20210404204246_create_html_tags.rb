class CreateHtmlTags < ActiveRecord::Migration[6.1]
  def change
    create_table :html_tags do |t|
      t.string :tag_name
      t.string :description
      
      t.timestamps
    end
  end
end
