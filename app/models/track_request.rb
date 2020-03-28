class TrackRequest < ApplicationRecord
    validates_presence_of :phone
    has_many :alerts

    after_commit :generate_alerts

    private

    def generate_alerts
        ActiveRecord::Base.transaction do
            (0..(rand(20..150))).each do |i|
                first_interaction_day = rand(0..14)
                last_interation_at = rand(first_interaction_day..14).days.ago
                Alert.create!(
                    track_request: self,
                    phone: "+91#{Faker::Number.number(10)}",
                    alert_type: Alert::ALERT_TYPES.values[rand(0...Alert::ALERT_TYPES.keys.length)],
                    first_interaction_at: first_interaction_day.days.ago,
                    last_interation_at: last_interation_at
                )
            end
        end
    end
end
