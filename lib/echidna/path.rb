# coding: utf-8
require 'pathname'

path = File.expand_path('.')
path = path.sub('\/bin$', '')

$app_root = Pathname.new(path)
$app_name = $app_root.basename.to_s.split('-').last
