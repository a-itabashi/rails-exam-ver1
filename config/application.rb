require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module TwitterClone
  class Application < Rails::Application
    config.load_defaults 5.1
    
     # タイムゾーンを日本時間に合わせる
    config.time_zone = 'Tokyo'
    config.active_record.default_timezone = :local
    
  end
end
