class CreateAlerts < ActiveRecord::Migration[6.0]
  def change
    create_table :alerts do |t|
      t.belongs_to :track_request, null: false, foreign_key: true
      t.string :phone, null: false, index: true
      t.string :alert_type, null: false, index: true
      t.datetime :first_interaction_at, null: false, index: true
      t.datetime :last_interation_at, null: false, index: true

      t.timestamps
    end
  end
end
