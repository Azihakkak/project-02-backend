# Jacked from rack-cors Github documentation

Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'http://localhost:3000'   #change after deployment
      resource '*',
        :headers => :any,
        :methods => %i( get post put patch delete options head ),
        :credentials => true
    end
  end
  