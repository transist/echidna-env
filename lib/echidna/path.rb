# coding: utf-8
require 'pathname'

$app_root = Pathname.new(File.expand_path('../..', $0))
$app_name = $app_root.basename.to_s.split('-').last
