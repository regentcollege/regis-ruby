require 'regis'

$REGIS_API = YAML.load_file("config/regis_api.yml")

Regis.client.configure do |config|
  config.url = $REGIS_API['url']
  config.username = $REGIS_API['username']
  config.password = $REGIS_API['password']
end