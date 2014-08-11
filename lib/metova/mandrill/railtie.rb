require 'rails'

module Metova
  module Mandrill
    class Railtie < ::Rails::Railtie

      ENV['MANDRILL_DOMAIN'].try do
        config.action_mailer.default_url_options = { host: ENV['MANDRILL_DOMAIN'] }
        config.action_mailer.delivery_method = :smtp
        config.action_mailer.smtp_settings = {
          address: 'smtp.mandrillapp.com',
          port: 587,
          enable_starttls_auto: true,
          authentication: 'login',
          user_name: ENV['MANDRILL_USERNAME'],
          password: ENV['MANDRILL_PASSWORD'],
          domain: ENV['MANDRILL_DOMAIN']
        }
      end

    end
  end
end