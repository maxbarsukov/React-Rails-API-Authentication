# frozen_string_literal: true

Rails.application.config.session_store :cookie_store,
                                       key: '_react-rails-authentication-app',
                                       domain: 'mb-test-authentication-api.heroku.app'
