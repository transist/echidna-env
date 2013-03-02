# coding: utf-8
require 'pathname'
path = File.expand_path('.')
path = path.sub('\/bin$', '')

$app_root = Pathname.new(path)
$app_path = $app_root.split('-').last

Dir[$app_root.join("lib/helpers/*.rb")].each { |file| require_relative file }
Dir[$app_root.join("lib/models/*.rb")].each { |file| require_relative file }
