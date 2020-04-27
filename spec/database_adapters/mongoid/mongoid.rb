# frozen_string_literal: true

Mongo::Logger.logger.level = Logger::INFO
Mongoid.load!(File.expand_path('mongoid.yml', __dir__), ENV['RACK_ENV'])
