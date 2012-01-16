Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :twitter, 'CIUQHYnhfxihNyZE2S0pvw', 'sT2uT8V6hrPAimFxBujC8nyPcwpg8jNgu0r8LYSIe4o'
end