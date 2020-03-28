class CreateTrackRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :track_requests do |t|
      t.string :phone, null: false, index: true

      t.timestamps
    end
  end
end
