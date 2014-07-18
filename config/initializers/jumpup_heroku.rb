Jumpup::Heroku.configure do |config|
  config.app = 'interpretations'
end if Rails.env.development?