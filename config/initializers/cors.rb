Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origin 'http://localhost:3000'
    resource '*', headers: :any,
                  methods: %i[get post put patch delete options head],
                  credentials: true
  end

  allow do
    # TODO: here your heroku domain
    origin 'http://app.heroku.app'
    resource '*', headers: :any,
                  methods: %i[get post put patch delete options head],
                  credentials: true
  end
end
