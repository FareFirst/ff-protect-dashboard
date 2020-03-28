ActiveAdmin.register Alert do
  permit_params :track_request_id, :phone, :alert_type, :first_interaction_at, :last_interation_at

  belongs_to :track_request

  scope :all, default: true
  Alert::ALERT_TYPES.keys.each do |k|
    scope k
  end
end
