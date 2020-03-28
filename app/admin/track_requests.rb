ActiveAdmin.register TrackRequest do
  permit_params :phone

  sidebar "Options", only: [:show, :edit] do
    ul do
      li link_to "Alerts", track_request_alerts_path(resource)
    end
  end
end
