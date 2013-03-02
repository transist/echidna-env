# coding: utf-8
require 'syslog'

$logger = Syslog.open("[#$app_name]", Syslog::LOG_PID | Syslog::LOG_CONS, Syslog::LOG_LOCAL3)
