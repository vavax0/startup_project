IMGKit.configure do |config|


	config.wkhtmltoimage = Rails.root.join('bin', 'wkhtmltoimage-amd64').to_s if ENV['RACK_ENV'] == 'production'
  config.wkhtmltoimage = 'C:\wkhtmltoimage.exe'

  config.default_options = { :quality => 80 }

end

