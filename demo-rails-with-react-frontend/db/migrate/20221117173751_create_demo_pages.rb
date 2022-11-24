class CreateDemoPages < ActiveRecord::Migration[7.0]
  def change
    create_table :demo_pages do |t|
      t.string :title
      t.string :slug
      t.text :description

      t.timestamps
    end
  end
end
