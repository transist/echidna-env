# coding: utf-8

%w(config/initializers/*.rb lib/redis/*.rb lib/helpers/*.rb lib/models/*.rb app/models/*.rb app/apis/*.rb, app/plugins/*.rb).each do |path|
  Dir[$app_root.join(path)].each { |file| require_relative file }
end
