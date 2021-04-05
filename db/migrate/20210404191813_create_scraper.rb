class CreateScraper < ActiveRecord::Migration[6.1]
  def change
    create_table :scrapers do |t|
      t.string :url
      t.string :source_code

      t.timestamps
    end
  end
end
