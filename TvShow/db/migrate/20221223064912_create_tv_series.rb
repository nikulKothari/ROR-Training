class CreateTvSeries < ActiveRecord::Migration[7.0]
  def change
    create_table :tv_series do |t|
      t.string :name
      t.time :start_time
      t.time :end_time
      t.references :channel, null: false, foreign_key: true

      t.timestamps
    end
  end
end