# coding: utf-8
require 'pathname'

path = File.expand_path('.')
path = path.sub('\/bin$', '')

$app_root = Pathname.new(path)
$app_name = path.split('-').last

%w(lib/helpers/*.rb lib/**/*.rb app/models/*.rb config/**/*.rb app/apis/*.rb).each do |path|
  Dir[$app_root.join(path)].each { |file| require_relative file }
end
