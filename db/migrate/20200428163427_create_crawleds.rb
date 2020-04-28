class CreateCrawleds < ActiveRecord::Migration[5.2]
  def change
    create_table :crawleds do |t|
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
