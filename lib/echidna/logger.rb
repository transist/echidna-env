# coding: utf-8
require 'syslog-ml-logger'

$logger = Logger::Syslog.new("[#{ENV['USER']}:#$app_name]", Syslog::LOG_PID | Syslog::LOG_CONS, Syslog::LOG_LOCAL3)
