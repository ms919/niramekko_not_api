Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins Rails.application.credentials.production[:domain], 'localhost:8080', 'lvh.me:8080'
    resource '*',
      headers: :any,
      expose: ['access-token', 'expiry', 'token-type', 'uid', 'client'],
      methods: [:get, :post, :put, :patch, :delete, :options, :head],
      credentials: true
  end
end