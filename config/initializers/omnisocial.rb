Omnisocial.setup do |config|
  
  # ==> Twitter
  # config.twitter 'APP_KEY', 'APP_SECRET'
  
  # ==> Facebook
  # config.facebook 'APP_KEY', 'APP_SECRET', :scope => 'publish_stream'
  
  if Rails.env.production?
     # Configs for production mode go here
     config.twitter 'FQx86BCrCNNOUAJ2fmbRA','ITZCWiiYUYaeU1vZNaWBJtKZyinFt5U6Wdfcy409IY' 
     config.facebook '172372752780895','1b52cc35595810accae3f631de8b7790'   
  elsif Rails.env.development?
    
    # Configs for development mode go here
    config.twitter 'FQx86BCrCNNOUAJ2fmbRA','ITZCWiiYUYaeU1vZNaWBJtKZyinFt5U6Wdfcy409IY'
    config.facebook '172372752780895','1b52cc35595810accae3f631de8b7790'
  end
  
end
