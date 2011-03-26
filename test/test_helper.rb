require 'flickraw'
require 'yaml'

unless defined?(CONFIG)
  config = File.join(File.dirname(__FILE__), 'config.yml')
  raise "please configure api key and secret in test/config.yml" unless File.readable?(config)

  CONFIG = YAML.load(File.read(config))
end

FlickRaw.api_key = CONFIG['api_key']
FlickRaw.shared_secret = CONFIG['secret']
