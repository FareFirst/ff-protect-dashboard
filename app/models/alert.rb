class Alert < ApplicationRecord
  ALERT_TYPES = {
    red: 'red',
    yellow: 'yellow',
    blue: 'blue',
    green: 'green'
  }

  ALERT_TYPES.each do |k, v|
    scope k, -> { where(alert_type: v) }
  end

  belongs_to :track_request

  validates_presence_of :phone, :alert_type, :first_interaction_at, :last_interation_at
end
